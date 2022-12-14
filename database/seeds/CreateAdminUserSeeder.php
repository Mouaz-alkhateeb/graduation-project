<?php
use Illuminate\Database\Seeder;
use App\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
class CreateAdminUserSeeder extends Seeder
{
/**
* Run the database seeds.
*
* @return void
*/
public function run()
{
$user = User::create([
    'name' => 'mouaz mohammed alkhateeb',
    'email' => 'mouaz@gmail.com',
    'password' => bcrypt('0123456'),
    'roles_name' => ["owner"],
    'status' => 'نشط',
]);
    $role = Role::create(['name' => 'owner']);
    $permissions = Permission::pluck('id','id')->all();
    $role->syncPermissions($permissions);
    $user->assignRole([$role->id]);
}
}
