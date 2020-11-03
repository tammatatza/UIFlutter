# MemoryStorySecret

พัฒนาแอปพลิเคชันด้วย Flutter

## ผู้พัฒนาแอปพลิเคชัน
- รหัสนิสิต 60020682 นายธรรมธัช สุนันทนานนท์

## รายละเอียดระบบ

### หน้าเข้าสู่ระบบ

![image](https://user-images.githubusercontent.com/45365514/97952430-f8878980-1dcf-11eb-9584-6413420f0156.png)

- หน้า login ได้ใช้ Firebase Cloud Database เพื่อเข้าสู่ระบบใช้งาน 
  - ผู้ใช้มีบัญชีแล้วสามารถกรอกชื่อผู้ใช้และรหัสผ่าน เพื่อเข้าสู่ระบบใช้งาน
  - ผู้ใช้ที่ยังไม่บัญชี สามารถกดที่ปุ่ม "สมัครสมาชิก" 

### หน้าสมัครสมาชิก

![image](https://user-images.githubusercontent.com/45365514/97952639-be6ab780-1dd0-11eb-8841-b20b8987acb2.png)
- หน้าสมัครสมาชิก ได้ใช้ Firebase Cloud Database เพื่อเข้าสู่ระบบใช้งาน 
  - ผู้ใช้ต้องกรอกEmail และ Password อย่างน้อย 6 ตัว เมื่อสมัครแล้วก็กดที่ปุ่ม Sign Up
  
  
 ### หน้าLocker
  
 ![image](https://user-images.githubusercontent.com/45365514/97952806-2faa6a80-1dd1-11eb-8c3f-d2cb66311f06.png)

 - หน้าLocker เป็นหน้าที่โชว์รูปภาพที่เราทำการอัพโหลด
 
### หน้า Upload

![image](https://user-images.githubusercontent.com/45365514/97952898-713b1580-1dd1-11eb-9394-0fd088e310a3.png)
  
- Upload
  - หน้านี้จะสามารถอัพโหลดภาพ ไฟล์ จากเครื่องได้เลยโดยการกดปุ่ม Upload
  - เมื่อทำการ Upload เสร็จกดไปที่ปุ่ม accept จะทำการกลับไปที่หน้าของ Locker แล้วแสดงรูปภาพ หรือ ไฟล์ ที่อัพโหลด
