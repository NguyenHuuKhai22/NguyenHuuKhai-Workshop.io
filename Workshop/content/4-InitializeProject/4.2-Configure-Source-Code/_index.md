+++
title = "Source Code Configuration"
date = 2025
weight = 2
chapter = false
pre = "<b>4.2. </b>"
+++

1. Access **config/filesystems.php** to configure **S3**

 ```php
  's3' => [
    'driver' => 's3',
    'key' => env('AWS_ACCESS_KEY_ID'),
    'secret' => env('AWS_SECRET_ACCESS_KEY'),
    'region' => env('AWS_DEFAULT_REGION'),
    'bucket' => env('AWS_BUCKET'),
    'url' => env('AWS_URL'),
    'endpoint' => env('AWS_ENDPOINT'),
    'use_path_style_endpoint' => env('AWS_USE_PATH_STYLE_ENDPOINT', false),
    'throw' => false,
    'report' => false,
], 
```

![alt text](https://nguyenhuukhai22.github.io/NguyenHuuKhai-Workshop.io/images/4-Create-Project/4.2-Configure-Source-Code/4-2-1.png)

2. Create Controller Upload File

- Use command to create Controller

 ```php 
php artisan make:controller FileUploadController
```
![alt text](https://nguyenhuukhai22.github.io/NguyenHuuKhai-Workshop.io/images/4-Create-Project/4.2-Configure-Source-Code/4-2-2.png)

3. Go to **app\Http\Controller\FileUploadController.php** to add Upload code

```php
<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class FileUploadController extends Controller
{
    public function upload(Request $request)
    {
        $request->validate([
            'file' => 'required|file|max:10240', // 10MB max
        ]);
        /** @var \Illuminate\Filesystem\FilesystemAdapter $s3 */
        $s3 = Storage::disk('s3');

        $path = Storage::disk('s3')->put('uploads', $request->file('file'));
        $url = $s3->url($path);

        return response()->json([
            'message' => 'Upload successful',
            'url' => $url,
        ]);
    }
}
```

![alt text](https://nguyenhuukhai22.github.io/NguyenHuuKhai-Workshop.io/images/4-Create-Project/4.2-Configure-Source-Code/4-2-3.png)

4. Add Route
- Add routes to **routes/web.php**.

```php 
use App\Http\Controllers\FileUploadController;

Route::get('/', function () {
    return view('upload'); // Giao diện đơn giản
});

Route::post('/upload', [FileUploadController::class, 'upload']);

```

![alt text](https://nguyenhuukhai22.github.io/NguyenHuuKhai-Workshop.io/images/4-Create-Project/4.2-Configure-Source-Code/4-2-4.png)