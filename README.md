# Organic Shop - E-Commerce Platform

A complete Laravel-based organic grocery and e-commerce web application with customer-facing storefront and a full-featured admin management dashboard.

Customized and maintained by **IT Nayeem** (https://itnayeem.com.bd).

---

## Features
- **Storefront**: Browse organic products, categories, dynamic banners, quick view, cart & checkout.
- **Admin Dashboard**: Manage products, orders, categories, customer inquiries, banners, site settings, and reports.
- **Payment & Shipping**: Multi-gateway support (bKash, Nagad, Cash on Delivery, etc.) and district-wise shipping rates.
- **Full Media Included**: Media uploads are tracked in the repository for seamless initial deployment.

---

## Requirements
- PHP >= 8.1
- Composer
- MySQL or MariaDB (>= 10.4)
- PHP Extensions: `pdo_mysql`, `mbstring`, `openssl`, `bcmath`, `curl`, `gd`

---

## Getting Started / Local Setup

### 1. Clone the repository
```bash
git clone https://github.com/itnayeem/organic_shop.git
cd organic_shop
```

### 2. Install Dependencies
```bash
composer install
```

### 3. Environment Configuration
Copy `.env.example` to `.env`:
```bash
cp .env.example .env
```
Generate an application key:
```bash
php artisan key:generate
```

Configure your database credentials in `.env`:
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=itnayeem_ecommerce1
DB_USERNAME=root
DB_PASSWORD=your_password
```

### 4. Import Database
Create the database and import the included SQL dump file:
```bash
mysql -u root -p itnayeem_ecommerce1 < itnayeem_ecommerce1.sql
```

### 5. Run the Application
You can run the application using PHP's built-in server with the provided `server.php` router or Laravel's artisan command:

```bash
php -S 127.0.0.1:8001 server.php
```
or
```bash
php artisan serve
```

Open your browser and visit: `http://127.0.0.1:8001` (or `http://localhost:8000`).

---

## Admin Panel Access
- **Login URL**: `http://127.0.0.1:8001/mypanel` (or `/mypanel`)
- **Admin Dashboard**: `http://127.0.0.1:8001/admin/dashboard`
- **Admin Email**: `support@itnayeem.com.bd`
- **Admin Password**: `12345678`
- **Phone**: `+8801511777744`

---

## Support & Contact
- **Website**: [IT Nayeem](https://itnayeem.com.bd)
- **Email**: support@itnayeem.com.bd
- **Phone**: +8801511777744

