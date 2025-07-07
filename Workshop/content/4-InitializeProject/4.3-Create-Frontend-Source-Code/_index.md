+++
title = "Create Frontend Source Code"
date = 2025
weight = 3
chapter = false
pre = "<b>4.3. </b>"
+++


This project is almost done, but we need an interface to receive file uploads, so let's create a UI for it.

1. First you need to go to **resources/views**
- Create **upload.blade.php**

![alt text](/images/4-Create-Project/4.3-Create-Frontend-Source-Code/4-3-1s.png)
{{% notice note %}}
To create the UI, you can use my front end source code or you can create your own nicer code
{{% /notice %}}
- Add the UI code to **upload.blade.php**

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload File to S3</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">

    <div class="bg-white shadow-lg rounded-xl p-8 w-full max-w-md text-center">
        <h2 class="text-2xl font-bold text-gray-800 mb-6">Upload File to Amazon S3</h2>

        <input type="file" id="fileInput" class="w-full mb-4 p-2 border rounded-lg text-sm">
        
        <button onclick="uploadFile()" 
                class="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded-lg transition duration-200">
            Upload
        </button>

        <p id="result" class="mt-4 text-sm text-green-600 font-medium"></p>
    </div>

    <script>
        async function uploadFile() {
            const input = document.getElementById('fileInput');
            const result = document.getElementById('result');
            if (input.files.length === 0) {
                result.innerText = "Please select a file first.";
                result.classList.remove("text-green-600");
                result.classList.add("text-red-600");
                return;
            }

            const formData = new FormData();
            formData.append("file", input.files[0]);

            try {
                const response = await fetch("/upload", {
                    method: "POST",
                    headers: {
                        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content
                    },
                    body: formData
                });

                const data = await response.json();
                if (data.url) {
                    result.innerText = `✅ Uploaded to: ${data.url}`;
                    result.classList.remove("text-red-600");
                    result.classList.add("text-green-600");
                } else {
                    result.innerText = "❌ Upload failed.";
                    result.classList.remove("text-green-600");
                    result.classList.add("text-red-600");
                }
            } catch (error) {
                result.innerText = "❌ Error during upload.";
                result.classList.remove("text-green-600");
                result.classList.add("text-red-600");
            }
        }
    </script>

</body>
</html>
```


![alt text](/images/4-Create-Project/4.3-Create-Frontend-Source-Code/4-3-2.png)
2. Run Frontend Source and here is the result:

![alt text](/images/4-Create-Project/4.3-Create-Frontend-Source-Code/4-3-3.png)