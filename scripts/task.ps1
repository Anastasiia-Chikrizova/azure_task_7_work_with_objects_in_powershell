$files = Get-ChildItem ../data

$arr = @()

foreach ($file in $files) {
    $decodedObject = Get-Content $file | ConvertFrom-Json
    if ($decodedObject.Name -eq "Standard_B2pts_v2") {
        $regionName =  "$file".Replace('.json', '').Replace('/Users/anastasiiachikrizova/Documents/azure_task_7_work_with_objects_in_powershell/data/','')
        $arr += $regionName
    }
}


$arr | ConvertTo-Json | Out-File -Path./result.json