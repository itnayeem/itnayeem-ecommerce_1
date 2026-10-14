 @php
  $product_discount = 0;
@endphp
@foreach($cartinfo as $key=>$value)
<tr>
  <td><img height="30" src="{{asset($value->options->image)}}"></td>
  <td>
      {{$value->name}}
        @php
            $product = App\Models\Product::find($value->id);
        @endphp
     
       @if($product && ($product->sizes->isNotEmpty() || $product->colors->isNotEmpty()))
        <div class="row g-1">
            <!-- Size Selector -->
            @if($product->sizes->isNotEmpty())
            <div class="col-md-6">
                <select id="size-selector-{{ $value->rowId }}" class="form-select form-select-sm cart-size-selector" data-id="{{ $value->rowId }}">
                    @foreach($product->sizes as $size)
                    <option value="{{ $size->sizeName }}" {{ $size->sizeName == $value->options->product_size ? 'selected' : '' }}>
                        {{ $size->sizeName }}
                    </option>
                    @endforeach
                </select>
                <label for="size-selector-{{ $value->rowId }}" class="form-label text-muted text-start" style="font-size: 0.875rem;">Size:
                @if($value->options->product_size)
                  {{$value->options->product_size}}
                @endif
                </label>
            </div>
            @endif
        
            <!-- Color Selector -->
            @if($product->colors->isNotEmpty())
            <div class="col-md-6">
                <select id="color-selector-{{ $value->rowId }}" class="form-select form-select-sm cart-color-selector" data-id="{{ $value->rowId }}">
                    @foreach($product->colors as $color)
                    <option value="{{ $color->colorName }}" {{ $color->colorName == $value->options->product_color ? 'selected' : '' }}>
                        {{ $color->colorName }}
                    </option>
                    @endforeach
                </select>
                <label for="color-selector-{{ $value->rowId }}" class="form-label text-muted text-start" style="font-size: 0.875rem;">Color:
                @if($value->options->product_color)
                   {{ $value->options->product_color }}
                @endif
                </label>
            </div>
            @endif
        </div>
        @endif
  </td>
  <td>
    <div class="qty-cart vcart-qty">
      <div class="quantity">
          <button class="minus cart_decrement" value="{{$value->qty}}"  data-id="{{$value->rowId}}">-</button>
          <input type="text" value="{{$value->qty}}" readonly />
          <button class="plus cart_increment" value="{{$value->qty}}" data-id="{{$value->rowId}}">+</button>
      </div>
  </div>
  </td>
  <td>{{$value->price}}</td>
  <td class="discount"><input type="number" class="product_discount" value="{{$value->options->product_discount}}" placeholder="0.00" data-id="{{$value->rowId}}">
  </td>
  <td>{{($value->price - $value->options->product_discount)*$value->qty}}</td>
  <td><button type="button" class="btn btn-danger btn-xs cart_remove" data-id="{{$value->rowId}}"><i class="fa fa-times"></i></button></td>
</tr>

@php
  $product_discount += $value->options->product_discount*$value->qty;
  Session::put('product_discount',$product_discount);
@endphp

@endforeach
<script>
    function cart_content(){
           $.ajax({
             type:"GET",
             url:"{{route('admin.order.cart_content')}}",
             dataType: "html",
             success: function(cartinfo){
               $('#cartTable').html(cartinfo)
             }
          });
      }
      function cart_details(){
           $.ajax({
             type:"GET",
             url:"{{route('admin.order.cart_details')}}",
             dataType: "html",
             success: function(cartinfo){
               $('#cart_details').html(cartinfo)
             }
          });
      }
    $(".cart_increment").click(function(e){
        e.preventDefault();
        var id = $(this).data("id");
        var qty = $(this).val();
        if(id){
              $.ajax({
               cache: false,
               data:{'id':id,'qty':qty},
               type:"GET",
               url:"{{route('admin.order.cart_increment')}}",
               dataType: "json",
            success: function(cartinfo){
                return cart_content()+cart_details();
            }
          });
        }
   });
    $(".cart_decrement").click(function(e){
        e.preventDefault();
        var id = $(this).data("id");
        var qty = $(this).val();
        if(id){
              $.ajax({
               cache: false, 
               type:"GET",
               data:{'id':id,'qty':qty},
               url:"{{route('admin.order.cart_decrement')}}",
               dataType: "json",
            success: function(cartinfo){
                return cart_content()+cart_details();
            }
          });
        }
   });
    $(".cart_remove").click(function(e){
        e.preventDefault();
        var id = $(this).data("id");
        if(id){
              $.ajax({
               cache: false,
               type:"GET",
               data:{'id':id},
               url:"{{route('admin.order.cart_remove')}}",
               dataType: "json",
              success: function(cartinfo){
                return cart_content()+cart_details();
            }
          });
        }
   });
   $(".product_discount").change(function(){
        var id = $(this).data("id");
        var discount = $(this).val();
          $.ajax({
           cache: false,
           type:"GET",
           data:{'id':id,'discount':discount},
           url:"{{route('admin.order.product_discount')}}",
           dataType: "json",
          success: function(cartinfo){
            return cart_content()+cart_details();
          }
        });
   });
    $(".cartclear").click(function(e){
      $.ajax({
           cache: false,
           type:"GET",
           url:"{{route('admin.order.cart_clear')}}",
           dataType: "json",
          success: function(cartinfo){
            return cart_content()+cart_details();
          }
       });
   });// pshippingfee from total
    $("#area").on("change", function () {
        var id = $(this).val();
        $.ajax({
            type: "GET",
            data: { id: id },
            url: "{{route('admin.order.cart_shipping')}}",
            dataType: "html",
            success: function(cartinfo){
               return cart_content()+cart_details();
            }
        });
    });
       // Event listener for size selector change
$('.cart-size-selector').on('change', function() {
    var rowId = $(this).data('id'); // Get the row ID
    var selectedSize = $(this).val(); // Get the selected size
     $.ajax({
           cache: false,
           type:"GET",
           data:{'id':rowId,'product_size':selectedSize},
           url:"{{ route('admin.order.cart.update') }}",
           dataType: "json",
            success: function(cartinfo){
            return cart_content()+cart_details();
          }
        });

});


// Event listener for color selector change
$('.cart-color-selector').on('change', function() {
    var rowId = $(this).data('id'); // Get the row ID
    var selectedColor = $(this).val(); // Get the selected color
    $.ajax({
           cache: false,
           type:"GET",
           data:{'id':rowId,'product_color':selectedColor},
           url:"{{ route('admin.order.cart.update') }}",
           dataType: "json",
            success: function(cartinfo){
            return cart_content()+cart_details();
          }
        });

});
</script>