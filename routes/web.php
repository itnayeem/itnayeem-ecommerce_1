<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Frontend\FrontendController;
use App\Http\Controllers\Frontend\ShoppingController;
use App\Http\Controllers\Frontend\CustomerController;
use App\Http\Controllers\Frontend\BkashController;
use App\Http\Controllers\Frontend\ShurjopayControllers;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\PermissionController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\SubcategoryController;
use App\Http\Controllers\Admin\ChildcategoryController;
use App\Http\Controllers\Admin\OrderStatusController;
use App\Http\Controllers\Admin\PixelsController;
use App\Http\Controllers\Admin\BrandController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\ApiIntegrationController;
use App\Http\Controllers\Admin\GeneralSettingController;
use App\Http\Controllers\Admin\SocialMediaController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\BannerCategoryController;
use App\Http\Controllers\Admin\BannerController;
use App\Http\Controllers\Admin\CreatePageController;
use App\Http\Controllers\Admin\CampaignController;
use App\Http\Controllers\Admin\ReviewController;
use App\Http\Controllers\Admin\CustomerManageController;
use App\Http\Controllers\Admin\ShippingChargeController;
use App\Http\Controllers\Admin\ColorController;
use App\Http\Controllers\Admin\SizeController;
use App\Http\Controllers\Admin\TagManagerController;

Auth::routes();

Route::get('/cc', function() {
    Artisan::call('config:clear');
    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('view:clear');
    return "Cleared!";
});

Route::get('/controller', function() {
    Artisan::call('make:controller Admin/TagManagerController');
    return "Controller Done!";
});

Route::group(['namespace'=>'Frontend', 'middleware' => ['ipcheck','check_refer']], function() {
    Route::get('/', [FrontendController::class, 'index'])->name('home');
    Route::get('category/{category}', [FrontendController::class, 'category'])->name('category');

    Route::get('subcategory/{subcategory}', [FrontendController::class, 'subcategory'])->name('subcategory');

    Route::get('products/{slug}', [FrontendController::class, 'products'])->name('products');

    Route::get('hot-deals', [FrontendController::class, 'hotdeals'])->name('hotdeals');
    Route::get('flash-sales', [FrontendController::class, 'flashsales'])->name('flashsales');
    Route::get('shop', [FrontendController::class, 'shop'])->name('shop');
    Route::get('livesearch', [FrontendController::class, 'livesearch'])->name('livesearch');
    Route::get('search', [FrontendController::class, 'search'])->name('search');
    Route::get('product/{id}', [FrontendController::class, 'details'])->name('product');    
    Route::get('quick-view', [FrontendController::class, 'quickview'])->name('quickview');
    Route::get('/shipping-charge', [FrontendController::class, 'shipping_charge'])->name('shipping.charge');
    Route::get('site/contact-us', [FrontendController::class, 'contact'])->name('contact');
    Route::get('/page/{slug}', [FrontendController::class, 'page'])->name('page');
    Route::get('districts', [FrontendController::class, 'districts'])->name('districts');
    Route::get('/campaign/{slug}', [FrontendController::class, 'campaign'])->name('campaign');
    Route::get('/offer', [FrontendController::class, 'offers'])->name('offers');
     Route::get('/payment-success', [FrontEndController::class, 'payment_success'])->name('payment_success');
    Route::get('/payment-cancel', [FrontEndController::class, 'payment_cancel'])->name('payment_cancel');

    // cart route
    Route::post('cart/store', [ShoppingController::class, 'cart_store'])->name('cart.store');

    Route::get('/add-to-cart/{id}/{qty}', [ShoppingController::class, 'addTocartGet']);

    Route::get('shop/cart', [ShoppingController::class, 'cart_show'])->name('cart.show');
    Route::get('cart/remove', [ShoppingController::class, 'cart_remove'])->name('cart.remove');
    Route::get('cart/count', [ShoppingController::class, 'cart_count'])->name('cart.count');
    Route::get('mobilecart/count', [ShoppingController::class, 'mobilecart_qty'])->name('mobile.cart.count');
    Route::get('cart/decrement', [ShoppingController::class, 'cart_decrement'])->name('cart.decrement');

    Route::get('cart/increment', [ShoppingController::class, 'cart_increment'])->name('cart.increment');
    Route::get('/cart/change-product', [ShoppingController::class, 'changeProduct'])->name('cart.changeProduct');
    Route::get('cart/update', [ShoppingController::class, 'cart_update'])->name('cart.update');


});

Route::group(['prefix'=>'customer','namespace'=>'Frontend', 'middleware' => ['ipcheck','check_refer']], function() {
    Route::get('/login', [CustomerController::class, 'login'])->name('customer.login');
    Route::post('/signin', [CustomerController::class, 'signin'])->name('customer.signin');
    Route::get('/register', [CustomerController::class, 'register'])->name('customer.register');
    Route::post('/store', [CustomerController::class, 'store'])->name('customer.store');
    Route::get('/verify', [CustomerController::class, 'verify'])->name('customer.verify');
    Route::post('/verify-account', [CustomerController::class, 'account_verify'])->name('customer.account.verify');
    Route::post('/resend-otp', [CustomerController::class, 'resendotp'])->name('customer.resendotp');
    Route::post('/logout', [CustomerController::class, 'logout'])->name('customer.logout');
    Route::post('/post/review', [CustomerController::class, 'review'])->name('customer.review');
    Route::get('/forgot-password', [CustomerController::class, 'forgot_password'])->name('customer.forgot.password');
    Route::post('/forgot-verify', [CustomerController::class, 'forgot_verify'])->name('customer.forgot.verify');
    Route::get('/forgot-password/reset', [CustomerController::class, 'forgot_reset'])->name('customer.forgot.reset');
    Route::post('/forgot-password/store', [CustomerController::class, 'forgot_store'])->name('customer.forgot.store');
    Route::post('/forgot-password/resendotp', [CustomerController::class, 'forgot_resend'])->name('customer.forgot.resendotp');
    Route::get('/checkout', [CustomerController::class, 'checkout'])->name('customer.checkout');
    Route::post('/order-save', [CustomerController::class, 'order_save'])->name('customer.ordersave');
    Route::get('/order-success/{id}', [CustomerController::class, 'order_success'])->name('customer.order_success');

   Route::get('/order-track', [CustomerController::class, 'order_track'])->name('customer.order_track');
    Route::get('/order-track/result', [CustomerController::class, 'order_track_result'])->name('customer.order_track_result');
    

});
// customer auth
Route::group(['prefix'=>'customer','namespace'=>'Frontend','middleware' => ['customer','ipcheck','check_refer']], function() {
    
    Route::get('/account', [CustomerController::class, 'account'])->name('customer.account');
    
    Route::get('/orders', [CustomerController::class, 'orders'])->name('customer.orders');
    Route::get('/invoice', [CustomerController::class, 'invoice'])->name('customer.invoice');
    Route::get('/invoice/order-note', [CustomerController::class, 'order_note'])->name('customer.order_note');
    Route::get('/profile-edit', [CustomerController::class, 'profile_edit'])->name('customer.profile_edit');
    Route::post('/profile-update', [CustomerController::class, 'profile_update'])->name('customer.profile_update');
    Route::get('/change-password', [CustomerController::class, 'change_pass'])->name('customer.change_pass');
    Route::post('/password-update', [CustomerController::class, 'password_update'])->name('customer.password_update');
    
});

Route::group(['namespace'=>'Frontend', 'middleware' => ['ipcheck','check_refer']], function() {
    
    Route::get('bkash/checkout-url/pay',[BkashController::class,'pay'])->name('url-pay');
Route::any('bkash/checkout-url/create',[BkashController::class,'create'])->name('url-create');
Route::get('bkash/checkout-url/callback',[BkashController::class,'callback'])->name('url-callback');
    Route::get('/payment-success', [ShurjopayControllers::class, 'payment_success'])->name('payment_success');
    Route::get('/payment-cancel', [ShurjopayControllers::class, 'payment_cancel'])->name('payment_cancel');

});

// unathenticate admin route
Route::group(['namespace'=>'Admin','prefix'=>'admin','middleware' => ['customer','ipcheck','check_refer']], function() {
    Route::get('locked', [DashboardController::class, 'locked'])->name('locked');
    Route::post('unlocked', [DashboardController::class, 'unlocked'])->name('unlocked');
});

// ajax route
Route::get('/ajax-product-subcategory', [ProductController::class, 'getSubcategory']);
Route::get('/ajax-product-childcategory', [ProductController::class, 'getChildcategory']);

// auth route
Route::group(['namespace'=>'Admin','middleware' => ['auth','lock','check_refer'],'prefix'=>'admin'], function() {
    Route::get('dashboard', [DashboardController::class, 'dashboard'])->name('dashboard');
    Route::get('change-password', [DashboardController::class, 'changepassword'])->name('change_password');
    Route::post('new-password', [DashboardController::class, 'newpassword'])->name('new_password');

    // users route 
    Route::get('users/manage', [UserController::class,'index'])->name('users.index');
    Route::get('users/create', [UserController::class,'create'])->name('users.create');
    Route::post('users/save', [UserController::class,'store'])->name('users.store');
    Route::get('users/{id}/edit', [UserController::class,'edit'])->name('users.edit');
    Route::post('users/update', [UserController::class,'update'])->name('users.update');
    Route::post('users/inactive', [UserController::class,'inactive'])->name('users.inactive');
    Route::post('users/active', [UserController::class,'active'])->name('users.active');
    Route::post('users/destroy', [UserController::class,'destroy'])->name('users.destroy');
    
    // roles
    Route::get('roles/manage', [RoleController::class,'index'])->name('roles.index');
    Route::get('roles/{id}/show', [RoleController::class,'show'])->name('roles.show');
    Route::get('roles/create', [RoleController::class,'create'])->name('roles.create');
    Route::post('roles/save', [RoleController::class,'store'])->name('roles.store');
    Route::get('roles/{id}/edit', [RoleController::class,'edit'])->name('roles.edit');
    Route::post('roles/update', [RoleController::class,'update'])->name('roles.update');
    Route::post('roles/destroy', [RoleController::class,'destroy'])->name('roles.destroy');

    // permissions
    Route::get('permissions/manage', [PermissionController::class,'index'])->name('permissions.index');
    Route::get('permissions/{id}/show', [PermissionController::class,'show'])->name('permissions.show');
    Route::get('permissions/create', [PermissionController::class,'create'])->name('permissions.create');
    Route::post('permissions/save', [PermissionController::class,'store'])->name('permissions.store');
    Route::get('permissions/{id}/edit', [PermissionController::class,'edit'])->name('permissions.edit');
    Route::post('permissions/update', [PermissionController::class,'update'])->name('permissions.update');
    Route::post('permissions/destroy', [PermissionController::class,'destroy'])->name('permissions.destroy');

    // categories
    Route::get('categories/manage', [CategoryController::class,'index'])->name('categories.index');
    Route::get('categories/{id}/show', [CategoryController::class,'show'])->name('categories.show');
    Route::get('categories/create', [CategoryController::class,'create'])->name('categories.create');
    Route::post('categories/save', [CategoryController::class,'store'])->name('categories.store');
    Route::get('categories/{id}/edit', [CategoryController::class,'edit'])->name('categories.edit');
    Route::post('categories/update', [CategoryController::class,'update'])->name('categories.update');
    Route::post('categories/inactive', [CategoryController::class,'inactive'])->name('categories.inactive');
    Route::post('categories/active', [CategoryController::class,'active'])->name('categories.active');
    Route::post('categories/destroy', [CategoryController::class,'destroy'])->name('categories.destroy');

    // Subcategories
    Route::get('subcategories/manage', [SubcategoryController::class,'index'])->name('subcategories.index');
    Route::get('subcategories/{id}/show', [SubcategoryController::class,'show'])->name('subcategories.show');
    Route::get('subcategories/create', [SubcategoryController::class,'create'])->name('subcategories.create');
    Route::post('subcategories/save', [SubcategoryController::class,'store'])->name('subcategories.store');
    Route::get('subcategories/{id}/edit', [SubcategoryController::class,'edit'])->name('subcategories.edit');
    Route::post('subcategories/update', [SubcategoryController::class,'update'])->name('subcategories.update');
    Route::post('subcategories/inactive', [SubcategoryController::class,'inactive'])->name('subcategories.inactive');
    Route::post('subcategories/active', [SubcategoryController::class,'active'])->name('subcategories.active');
    Route::post('subcategories/destroy', [SubcategoryController::class,'destroy'])->name('subcategories.destroy');

    // Childcategories
    Route::get('childcategories/manage', [ChildcategoryController::class,'index'])->name('childcategories.index');
    Route::get('childcategories/{id}/show', [ChildcategoryController::class,'show'])->name('childcategories.show');
    Route::get('childcategories/create', [ChildcategoryController::class,'create'])->name('childcategories.create');
    Route::post('childcategories/save', [ChildcategoryController::class,'store'])->name('childcategories.store');
    Route::get('childcategories/{id}/edit', [ChildcategoryController::class,'edit'])->name('childcategories.edit');
    Route::post('childcategories/update', [ChildcategoryController::class,'update'])->name('childcategories.update');
    Route::post('childcategories/inactive', [ChildcategoryController::class,'inactive'])->name('childcategories.inactive');
    Route::post('childcategories/active', [ChildcategoryController::class,'active'])->name('childcategories.active');
    Route::post('childcategories/destroy', [ChildcategoryController::class,'destroy'])->name('childcategories.destroy');
    
     // paymentgeteway
    Route::get('paymentgeteway/manage', [ApiIntegrationController::class,'pay_manage'])->name('paymentgeteway.manage');
    Route::post('paymentgeteway/save', [ApiIntegrationController::class,'pay_update'])->name('paymentgeteway.update');
    
     // smsgeteway
    Route::get('smsgeteway/manage', [ApiIntegrationController::class,'sms_manage'])->name('smsgeteway.manage');
    Route::post('smsgeteway/save', [ApiIntegrationController::class,'sms_update'])->name('smsgeteway.update');
    
    // courierapi
    Route::get('courierapi/manage', [ApiIntegrationController::class,'courier_manage'])->name('courierapi.manage');
    Route::post('courierapi/save', [ApiIntegrationController::class,'courier_update'])->name('courierapi.update');

    // attribute
    Route::get('orderstatus/manage', [OrderStatusController::class,'index'])->name('orderstatus.index');
    Route::get('orderstatus/{id}/show', [OrderStatusController::class,'show'])->name('orderstatus.show');
    Route::get('orderstatus/create', [OrderStatusController::class,'create'])->name('orderstatus.create');
    Route::post('orderstatus/save', [OrderStatusController::class,'store'])->name('orderstatus.store');
    Route::get('orderstatus/{id}/edit', [OrderStatusController::class,'edit'])->name('orderstatus.edit');
    Route::post('orderstatus/update', [OrderStatusController::class,'update'])->name('orderstatus.update');
    Route::post('orderstatus/inactive', [OrderStatusController::class,'inactive'])->name('orderstatus.inactive');
    Route::post('orderstatus/active', [OrderStatusController::class,'active'])->name('orderstatus.active');
    Route::post('orderstatus/destroy', [OrderStatusController::class,'destroy'])->name('orderstatus.destroy');
    
    // pixels
    Route::get('pixels/manage', [PixelsController::class,'index'])->name('pixels.index');
    Route::get('pixels/{id}/show', [PixelsController::class,'show'])->name('pixels.show');
    Route::get('pixels/create', [PixelsController::class,'create'])->name('pixels.create');
    Route::post('pixels/save', [PixelsController::class,'store'])->name('pixels.store');
    Route::get('pixels/{id}/edit', [PixelsController::class,'edit'])->name('pixels.edit');
    Route::post('pixels/update', [PixelsController::class,'update'])->name('pixels.update');
    Route::post('pixels/inactive', [PixelsController::class,'inactive'])->name('pixels.inactive');
    Route::post('pixels/active', [PixelsController::class,'active'])->name('pixels.active');
    Route::post('pixels/destroy', [PixelsController::class,'destroy'])->name('pixels.destroy');
    
     // tag manager
    Route::get('tag-manager/manage', [TagManagerController::class,'index'])->name('tagmanagers.index');
    Route::get('tag-manager/{id}/show', [TagManagerController::class,'show'])->name('tagmanagers.show');
    Route::get('tag-manager/create', [TagManagerController::class,'create'])->name('tagmanagers.create');
    Route::post('tag-manager/save', [TagManagerController::class,'store'])->name('tagmanagers.store');
    Route::get('tag-manager/{id}/edit', [TagManagerController::class,'edit'])->name('tagmanagers.edit');
    Route::post('tag-manager/update', [TagManagerController::class,'update'])->name('tagmanagers.update');
    Route::post('tag-manager/inactive', [TagManagerController::class,'inactive'])->name('tagmanagers.inactive');
    Route::post('tag-manager/active', [TagManagerController::class,'active'])->name('tagmanagers.active');
    Route::post('tag-manager/destroy', [TagManagerController::class,'destroy'])->name('tagmanagers.destroy');
    
    // attribute
    Route::get('brands/manage', [BrandController::class,'index'])->name('brands.index');
    Route::get('brands/{id}/show', [BrandController::class,'show'])->name('brands.show');
    Route::get('brands/create', [BrandController::class,'create'])->name('brands.create');
    Route::post('brands/save', [BrandController::class,'store'])->name('brands.store');
    Route::get('brands/{id}/edit', [BrandController::class,'edit'])->name('brands.edit');
    Route::post('brands/update', [BrandController::class,'update'])->name('brands.update');
    Route::post('brands/inactive', [BrandController::class,'inactive'])->name('brands.inactive');
    Route::post('brands/active', [BrandController::class,'active'])->name('brands.active');
    Route::post('brands/destroy', [BrandController::class,'destroy'])->name('brands.destroy');

     // color
    Route::get('color/manage', [ColorController::class,'index'])->name('colors.index');
    Route::get('color/{id}/show', [ColorController::class,'show'])->name('colors.show');
    Route::get('color/create', [ColorController::class,'create'])->name('colors.create');
    Route::post('color/save', [ColorController::class,'store'])->name('colors.store');
    Route::get('color/{id}/edit', [ColorController::class,'edit'])->name('colors.edit');
    Route::post('color/update', [ColorController::class,'update'])->name('colors.update');
    Route::post('color/inactive', [ColorController::class,'inactive'])->name('colors.inactive');
    Route::post('color/active', [ColorController::class,'active'])->name('colors.active');
    Route::post('color/destroy', [ColorController::class,'destroy'])->name('colors.destroy');
    
    // size
    Route::get('size/manage', [SizeController::class,'index'])->name('sizes.index');
    Route::get('size/{id}/show', [SizeController::class,'show'])->name('sizes.show');
    Route::get('size/create', [SizeController::class,'create'])->name('sizes.create');
    Route::post('size/save', [SizeController::class,'store'])->name('sizes.store');
    Route::get('size/{id}/edit', [SizeController::class,'edit'])->name('sizes.edit');
    Route::post('size/update', [SizeController::class,'update'])->name('sizes.update');
    Route::post('size/inactive', [SizeController::class,'inactive'])->name('sizes.inactive');
    Route::post('size/active', [SizeController::class,'active'])->name('sizes.active');
    Route::post('size/destroy', [SizeController::class,'destroy'])->name('sizes.destroy');
   
   
    // product
    Route::get('products/manage', [ProductController::class,'index'])->name('products.index');
    Route::get('products/{id}/show', [ProductController::class,'show'])->name('products.show');
    Route::get('products/create', [ProductController::class,'create'])->name('products.create');
    Route::post('products/save', [ProductController::class,'store'])->name('products.store');
    Route::get('products/{id}/edit', [ProductController::class,'edit'])->name('products.edit');
    Route::post('products/update', [ProductController::class,'update'])->name('products.update');
    Route::post('products/inactive', [ProductController::class,'inactive'])->name('products.inactive');
    Route::post('products/active', [ProductController::class,'active'])->name('products.active');
    Route::post('products/destroy', [ProductController::class,'destroy'])->name('products.destroy');
    Route::get('products/image/destroy', [ProductController::class,'imgdestroy'])->name('products.image.destroy');
    Route::get('products/price/destroy', [ProductController::class,'pricedestroy'])->name('products.price.destroy');
    Route::get('products/update-deals', [ProductController::class,'update_deals'])->name('products.update_deals');
    Route::get('products/update-feature', [ProductController::class,'update_feature'])->name('products.update_feature');
    Route::get('products/update-status', [ProductController::class,'update_status'])->name('products.update_status');
    Route::get('products/price-edit', [ProductController::class,'price_edit'])->name('products.price_edit');
    Route::post('products/price-update', [ProductController::class,'price_update'])->name('products.price_update');
    
    // campaign
    Route::get('campaign/manage', [CampaignController::class,'index'])->name('campaign.index');
    Route::get('campaign/{id}/show', [CampaignController::class,'show'])->name('campaign.show');
    Route::get('campaign/create', [CampaignController::class,'create'])->name('campaign.create');
    Route::post('campaign/save', [CampaignController::class,'store'])->name('campaign.store');
    Route::get('campaign/{id}/edit', [CampaignController::class,'edit'])->name('campaign.edit');
    Route::post('campaign/update', [CampaignController::class,'update'])->name('campaign.update');
    Route::post('campaign/inactive', [CampaignController::class,'inactive'])->name('campaign.inactive');
    Route::post('campaign/active', [CampaignController::class,'active'])->name('campaign.active');
    Route::post('campaign/destroy', [CampaignController::class,'destroy'])->name('campaign.destroy');
    Route::get('campaign/image/destroy', [CampaignController::class,'imgdestroy'])->name('campaign.image.destroy');
   
    // settings route 
    Route::get('settings/manage', [GeneralSettingController::class,'index'])->name('settings.index');
    Route::get('settings/create', [GeneralSettingController::class,'create'])->name('settings.create');
    Route::post('settings/save', [GeneralSettingController::class,'store'])->name('settings.store');
    Route::get('settings/{id}/edit', [GeneralSettingController::class,'edit'])->name('settings.edit');
    Route::post('settings/update', [GeneralSettingController::class,'update'])->name('settings.update');
    Route::post('settings/inactive', [GeneralSettingController::class,'inactive'])->name('settings.inactive');
    Route::post('settings/active', [GeneralSettingController::class,'active'])->name('settings.active');
    Route::post('settings/destroy', [GeneralSettingController::class,'destroy'])->name('settings.destroy');

     // settings route 
    Route::get('social-media/manage', [SocialMediaController::class,'index'])->name('socialmedias.index');
    Route::get('social-media/create', [SocialMediaController::class,'create'])->name('socialmedias.create');
    Route::post('social-media/save', [SocialMediaController::class,'store'])->name('socialmedias.store');
    Route::get('social-media/{id}/edit', [SocialMediaController::class,'edit'])->name('socialmedias.edit');
    Route::post('social-media/update', [SocialMediaController::class,'update'])->name('socialmedias.update');
    Route::post('social-media/inactive', [SocialMediaController::class,'inactive'])->name('socialmedias.inactive');
    Route::post('social-media/active', [SocialMediaController::class,'active'])->name('socialmedias.active');
    Route::post('social-media/destroy', [SocialMediaController::class,'destroy'])->name('socialmedias.destroy');

     // contact route 
    Route::get('contact/manage', [ContactController::class,'index'])->name('contact.index');
    Route::get('contact/create', [ContactController::class,'create'])->name('contact.create');
    Route::post('contact/save', [ContactController::class,'store'])->name('contact.store');
    Route::get('contact/{id}/edit', [ContactController::class,'edit'])->name('contact.edit');
    Route::post('contact/update', [ContactController::class,'update'])->name('contact.update');
    Route::post('contact/inactive', [ContactController::class,'inactive'])->name('contact.inactive');
    Route::post('contact/active', [ContactController::class,'active'])->name('contact.active');
    Route::post('contact/destroy', [ContactController::class,'destroy'])->name('contact.destroy');

     // banner category route 
    Route::get('banner-category/manage', [BannerCategoryController::class,'index'])->name('banner_category.index');
    Route::get('banner-category/create', [BannerCategoryController::class,'create'])->name('banner_category.create');
    Route::post('banner-category/save', [BannerCategoryController::class,'store'])->name('banner_category.store');
    Route::get('banner-category/{id}/edit', [BannerCategoryController::class,'edit'])->name('banner_category.edit');
    Route::post('banner-category/update', [BannerCategoryController::class,'update'])->name('banner_category.update');
    Route::post('banner-category/inactive', [BannerCategoryController::class,'inactive'])->name('banner_category.inactive');
    Route::post('banner-category/active', [BannerCategoryController::class,'active'])->name('banner_category.active');
    Route::post('banner-category/destroy', [BannerCategoryController::class,'destroy'])->name('banner_category.destroy');

    // banner  route 
    Route::get('banner/manage', [BannerController::class,'index'])->name('banners.index');
    Route::get('banner/create', [BannerController::class,'create'])->name('banners.create');
    Route::post('banner/save', [BannerController::class,'store'])->name('banners.store');
    Route::get('banner/{id}/edit', [BannerController::class,'edit'])->name('banners.edit');
    Route::post('banner/update', [BannerController::class,'update'])->name('banners.update');
    Route::post('banner/inactive', [BannerController::class,'inactive'])->name('banners.inactive');
    Route::post('banner/active', [BannerController::class,'active'])->name('banners.active');
    Route::post('banner/destroy', [BannerController::class,'destroy'])->name('banners.destroy');
    
    // contact route 
    Route::get('page/manage', [CreatePageController::class,'index'])->name('pages.index');
    Route::get('page/create', [CreatePageController::class,'create'])->name('pages.create');
    Route::post('page/save', [CreatePageController::class,'store'])->name('pages.store');
    Route::get('page/{id}/edit', [CreatePageController::class,'edit'])->name('pages.edit');
    Route::post('page/update', [CreatePageController::class,'update'])->name('pages.update');
    Route::post('page/inactive', [CreatePageController::class,'inactive'])->name('pages.inactive');
    Route::post('page/active', [CreatePageController::class,'active'])->name('pages.active');
    Route::post('page/destroy', [CreatePageController::class,'destroy'])->name('pages.destroy');

    // Pos route
    Route::get('order/create', [OrderController::class,'order_create'])->name('admin.order.create');
    Route::post('order/store', [OrderController::class,'order_store'])->name('admin.order.store');
    Route::get('order/cart-add', [OrderController::class,'cart_add'])->name('admin.order.cart_add');
    Route::get('order/cart-content', [OrderController::class,'cart_content'])->name('admin.order.cart_content');
    Route::get('order/cart-increment', [OrderController::class,'cart_increment'])->name('admin.order.cart_increment');
    Route::get('order/cart-decrement', [OrderController::class,'cart_decrement'])->name('admin.order.cart_decrement');
    Route::get('order/cart-remove', [OrderController::class,'cart_remove'])->name('admin.order.cart_remove');
    Route::get('order/cart-product-discount', [OrderController::class,'product_discount'])->name('admin.order.product_discount');
    Route::get('order/cart-details', [OrderController::class,'cart_details'])->name('admin.order.cart_details');
    Route::get('order/cart-shipping', [OrderController::class,'cart_shipping'])->name('admin.order.cart_shipping');
    Route::get('order/cart-clear', [OrderController::class,'cart_clear'])->name('admin.order.cart_clear');
    Route::get('order/cart/update', [OrderController::class, 'cart_update'])->name('admin.order.cart.update');

    // Order route 
    Route::get('order/{slug}', [OrderController::class,'index'])->name('admin.orders');
    Route::get('order/edit/{invoice_id}', [OrderController::class,'order_edit'])->name('admin.order.edit');
    Route::post('order/update', [OrderController::class,'order_update'])->name('admin.order.update');
    Route::get('order/invoice/{invoice_id}', [OrderController::class,'invoice'])->name('admin.order.invoice');
    Route::get('order/process/{invoice_id}', [OrderController::class,'process'])->name('admin.order.process');
    Route::post('order/change', [OrderController::class,'order_process'])->name('admin.order_change');
    Route::post('order/destroy', [OrderController::class,'destroy'])->name('admin.order.destroy');
    Route::get('order-assign', [OrderController::class,'order_assign'])->name('admin.order.assign');
    Route::get('order-status', [OrderController::class,'order_status'])->name('admin.order.status');
    Route::get('order-bulk-destroy', [OrderController::class,'bulk_destroy'])->name('admin.order.bulk_destroy');
    Route::get('order-print', [OrderController::class,'order_print'])->name('admin.order.order_print');
    Route::get('bulk-courier/{slug}', [OrderController::class,'bulk_courier'])->name('admin.bulk_courier');
    Route::get('stock-report', [OrderController::class,'stock_report'])->name('admin.stock_report');
    Route::get('order-report', [OrderController::class,'order_report'])->name('admin.order_report');
    Route::get('order-pathao', [OrderController::class,'order_pathao'])->name('admin.order.pathao');
    Route::get('/pathao-city', [OrderController::class, 'pathaocity'])->name('pathaocity');
    Route::get('/pathao-zone', [OrderController::class, 'pathaozone'])->name('pathaozone');

    // Order route 
    Route::get('reviews', [ReviewController::class,'index'])->name('reviews.index');
    Route::get('review/pending', [ReviewController::class,'pending'])->name('reviews.pending');
     Route::post('review/inactive', [ReviewController::class,'inactive'])->name('reviews.inactive');
    Route::post('review/active', [ReviewController::class,'active'])->name('reviews.active');
     Route::get('review/create', [ReviewController::class,'create'])->name('reviews.create');
    Route::post('review/save', [ReviewController::class,'store'])->name('reviews.store');
    Route::get('review/{id}/edit', [ReviewController::class,'edit'])->name('reviews.edit');
    Route::post('review/update', [ReviewController::class,'update'])->name('reviews.update');
    Route::post('review/destroy', [ReviewController::class,'destroy'])->name('reviews.destroy');

    // flavor  route 
    Route::get('shipping-charge/manage', [ShippingChargeController::class,'index'])->name('shippingcharges.index');
    Route::get('shipping-charge/create', [ShippingChargeController::class,'create'])->name('shippingcharges.create');
    Route::post('shipping-charge/save', [ShippingChargeController::class,'store'])->name('shippingcharges.store');
    Route::get('shipping-charge/{id}/edit', [ShippingChargeController::class,'edit'])->name('shippingcharges.edit');
    Route::post('shipping-charge/update', [ShippingChargeController::class,'update'])->name('shippingcharges.update');
    Route::post('shipping-charge/inactive', [ShippingChargeController::class,'inactive'])->name('shippingcharges.inactive');
    Route::post('shipping-charge/active', [ShippingChargeController::class,'active'])->name('shippingcharges.active');
    Route::post('shipping-charge/destroy', [ShippingChargeController::class,'destroy'])->name('shippingcharges.destroy');
    
    // backend customer route 
    Route::get('customer', [CustomerManageController::class,'index'])->name('customers.index');
    Route::get('customer/manage', [CustomerManageController::class,'index'])->name('customers.index');
    Route::get('customer/{id}/edit', [CustomerManageController::class,'edit'])->name('customers.edit');
    Route::post('customer/update', [CustomerManageController::class,'update'])->name('customers.update');
    Route::post('customer/inactive', [CustomerManageController::class,'inactive'])->name('customers.inactive');
    Route::post('customer/active', [CustomerManageController::class,'active'])->name('customers.active');
    Route::get('customer/profile', [CustomerManageController::class,'profile'])->name('customers.profile');
    Route::post('customer/adminlog', [CustomerManageController::class,'adminlog'])->name('customers.adminlog');
    Route::get('customer/ip-block', [CustomerManageController::class,'ip_block'])->name('customers.ip_block');
    Route::post('customer/ip-store', [CustomerManageController::class,'ipblock_store'])->name('customers.ipblock.store');
    Route::post('customer/ip-update', [CustomerManageController::class,'ipblock_update'])->name('customers.ipblock.update');
    Route::post('customer/ip-destroy', [CustomerManageController::class,'ipblock_destroy'])->name('customers.ipblock.destroy');

});