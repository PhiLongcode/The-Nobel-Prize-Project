backEnd_sem1 Git: https://github.com/baconbao123/BackEnd_sem1.git
fontEnd_sem1 Git: https://github.com/baconbao123/FontEnd_sem1.git
1. Khi mà clone code về thì phải clone submodule theo 3 lệnh sau:
git submodule update --init
git submodule update --recursive --remote
git pull --recurse-submodules
2. Khi mà push code lên phải add,commit, push cả trong git con và cả trong git cha
3. Khi bị lỗi merge: sử dụng git stash để tạo nhánh phụ sau đó chỉnh sửa merge code rồi commit lại
4. Khi mở code lên:
Phần back_end: chạy lệnh 
        composer install 
để install vendor

Phần font_end: chạy lệnh
        npm install 
để install node modules

5.  Nhớ dabas tên là project_sem1 nha