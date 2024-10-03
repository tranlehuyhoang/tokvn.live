<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @livewireStyles
</head>

<body>
    {{ $slot }}
</body>
@livewireScripts
<script>
    document.addEventListener('DOMContentLoaded', function() {
    const closeButton = document.getElementById('coloess');
    const modal = document.getElementById('myModal');
    console.log(modal);
    
    
    closeButton.onclick = function() {
    modal.style.display = 'none !important';
    };
    });
    
</script>

</html>