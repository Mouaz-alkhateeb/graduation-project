<?php
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
class PermissionTableSeeder extends Seeder
{
/**
* Run the database seeds.
*
* @return void
*/
public function run()
{


$permissions = [
        
        'لوحة التحكم',
        'قبول ورفض الخدمات',
        'قبول ورفض الطلبات',
        'عرض صلاحية',
        'اضافة صلاحية',
        'تعديل صلاحية',
        'حذف صلاحية',
        'اضافة طلب',
        'حذف طلب',
        'تصدير EXCEL',
        'تعديل الطلب',  
];



foreach ($permissions as $permission) {

Permission::create(['name' => $permission]);
}


}
}
