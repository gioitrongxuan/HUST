1. Yêu cầu phần mềm 
2. Biểu đồ usecase
	1. Mục đích : đặc tả những chức năng của một hệ thống phần mềm
	2. Được sử dụng trong tất cả các bước và tất cả những người trong dự án đều phải sử dụng 
	3. Lợi ích: 
		1. Giao tiếp: Giao tiếp với mọi người liên quan
		2. Nhận biết : được hệ thống có những đối tượng người dùng, chức năng nào?
		3. Kiểm chứng: 
	4. Có hai thành phần chính:
		1. Actor
			1. Những thành phần tương tác với phần mền, không nằm trong phần mềm, có thể là con người, hệ thống phần mềm khác.
			2. Actor như là vai trò, một người dùng cụ thể có thể có nhiều vai trò khác nhau
			3. Chuyển đổi giữa các vai trò :
				1. Cung cấp nhiều tài khoản
				2. Cung cấp tính năng đổi vai trò
			4. Một số cách xác định actor:
				1. Tìm các danh từ, chủ thể của hành động
			5. Đặt tên cho actor: phải là duy nhất và thống nhất
		2. Use-case: 
			1. Là một chuỗi các hành động đem lại giá trị gì đó cho actor.
			Lưu ý: Không vẽ hành động là Use-case vì 1 uc phải mang lại một giá trị, chức năng gì đó.
			2. Tên usecase		
		3. Quan hệ giữa các thành phần
			1. Các tác nhân với nhau: 
				1. Kế thừa : thay thế tác nhân cha bằng tác nhân con thì vẫn đúng
				2. Liên kết: Tác nhân không liên kết với hệ thống, mà liên kết gián tiếp
				3. Tổng quát hóa:
			2. Tác nhân và use case
				1. Có thể vẽ mũi tên hoặc không, vẽ để hiểu rõ hơn về chiều tác động
			3.  1 Use case tham gia của nhiều tác nhân:
				1. Đâu là phía khởi tạo thì vẽ mũi tên trong từng cặp một
					![[Pasted image 20240229091954.png]]
				2. Vẽ 1 mũi tên bắt đầu.
			4. usecase và usecase
				1. Tổng quát hóa: usecase con thừa hưởng hành vi và ý nghĩa của uc cha
					-> để kiểm tra quan hệ này, chỗ nào xuất hiện uc cha ta thay bằng uc con mà không gặp vấn đề. <mark>usecase con hoàn toàn thay thế được usecase cha</mark>
				2. Quan hệ include ( <mark>dễ nhầm lẫn với extends</mark>) 
					1. Tách các bước trùng nhau ra thành 1 usecase C (<span style ="color: blue">included usecase</span>)và cho include vào các usecase kia (<span style="color:blue"> base usecase</span>).
					2. 
				3. Quan hệ extends:
					1. extending usecase kế thừa base usecase ( extended usecase </span>) và bổ sung thêm các chức năng mới.
					2. Khi nào sử dụng? :
						1. Muốn tách biệt hành vi bắt buộc với hành vi tùy chọn
						2. Muốn bổ sung thêm tính năng.
			4. Ảnh minh họa
				![[Pasted image 20240229094135.png]]
		5. Phân cấp các usecase:
			1. Nhóm những uc cùng 1 chủ đề vào 1 composite uc ( Không phải là usecase thực sự) .
			
				1. ![[Pasted image 20240229095325.png]] 
				 manage user không phải là 1 usecase thực sự
 
			3. Bổ sung thêm biểu đồ phân rã composite uc.
	 *Lưu ý khi vẽ sơ đồ use case: 
		1.Làm sao để phân biệt được đâu là sự tham gia giữa hai tác nhân hay là hai tác nhân đều sử dụng được usecase 
		ví dụ : nếu cả student, và lecturer đều sử dụng được usecase login*
		-> cách giải quyết : tạo ra 1 abstract actor và cho hai tác nhân kia kế thừa
		*2. Không lạm dụng quan hệ giữa casc usecase*


BTVD: ATM software
	1. actor:
		customers,  bank consortium, cashier, maintenance crew.
	2. usecase:
		 Login, Withdraw cash, transfer funds, query balance, deposit funds, collect deposits, print logs, start software, stop software, backup software.