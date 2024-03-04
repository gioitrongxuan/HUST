- <mark>Vòng đời phần mềm</mark> 
	- Định nghĩa: tính từ lúc sinh ra cho đến lúc chết đi
	- Quy trình phần mềm: 
		-  Pha phân tích
		-  Pha thiết kế
		-  Pha chế tạo
		-  Pha Kiểm thử
		-  Pha bảo trì
		-Biểu diễn các pha có thể khác nhau theo từng mô hình
		- Mỗi sản phẩm đều có vòng đời 
		- Vòng đời thường khá dài
		- Vòng đời có thể được rút ngắn do phát triển công nghệ
	- Lợi ích khi áp dụng đúng quy trình SDLC:
		- Tăng khả năng nắm bắt thông tin
		- Ước tính lập kế hoạch lên lịch hiệu quả
		- Cải thiện quản lý rủi ro
		- Cung cấp dịch vụ cho khách hàng hài lòng hơn
	- Bước trong quy trình phát triển phần mềm 
		- Nghiên cứu khả thi
		- Phân tích yêu cầu 
			- Xác định yêu cầu của khách hàng  và ràng buộc của sản phẩm
			- Phân tích lợi ích chi phí , ước tính phân bố tài nguyên 
		- Thiết kế hệ thống
			- Xác định giải pháp thích hợp, lựa chọn công nghệ
		- Thiết kế chu trình 
		- Xây dựng phần mềm
			- Viết phần mềm, viết bản sao để test, giúp khách hàng có thể vẫn sử dụng được trong khi đang ...(update)
		- Kiểm thử
<span style= "color: red"> Quy trình phần mềm</span> 
- <span style= "color: red"> Một số mô hình phát triển phần mềm phổ biến</span>
	- 1.1 Mô hình thác nước
		-  Ưu điểm:
			- Tách nhiệm vụ trong mỗi giai đoạn 1 cách riêng biệt
			- Khả năng hiển thị tốt, dễ theo dõi
			- Quy trình kiểm soát chất lượng ở mỗi bước
			- Giám sát rõ ràng 
		- Nhược điểm
			- Cần xác định rõ các yêu cầu ngay từ đầu, khó thay đổi, không đủ linh hoạt so với thực tế
		- Mô hình thác nước sửa đổi : Có thêm bước feedback ở từng bước
	- 1.2 Mô hình mẫu tử  (Prototyping model)
		- Khi mới tiếp nhận dự án , mới rõ mục đích chung chung, chưa rõ chi tiết
		- Dùng để thu thập yêu cầu qua các thiết kế nhanh
	- 1.3 Mô hình tăng trưởng 
		- Các mô hình tiêu biểu:
			- Gia tăng (incremental model)
				- Kết hợp mô hình tuần tự và ý tưởng lặp lại của chế bản mẫu 
				- Sản phẩm với những yêu cầu cơ bản nhất của hệ thống được phát triển 
				- Các chức năng với những yêu cầu khác được phát triển thêm sau (gia tăng) 
				- Lặp lại quy trình để hoàn thiện dần
			- Xoán ốc 
				- Vừa có tính gia tăng vừa có tính lặp
				- <span style = "color: red">Giao tiếp khách hàng </span>: giữa người phát triển và khách hàng để tìm hiểu yêu cầu , ý kiến 
				- Lập kế hoạch: Xác lập tài nguyên, thời hạn và những thông tin khác
				- Phân tích rủi ro: Xem xét mạo hiểm kỹ thuật và mạo hiểm quản lý 
				- Kỹ nghệ : Xây dựng một hay một số biểu diễn của ứng dụng
				- Xây dựng và xuất xưởng: xây dựng, kiểm thử, cài đặt và cung cấp hỗ trợ người dùng (tư liệu , huấn luyện , . . .) 
				- Đánh giá của khách hàng : Nhận các phản hồi của người sử dụng về biểu diễn phần mềm trong giai đoạn kỹ nghệ và cài đặt
	-  1.4 Mô hình phát triển ứng dụng nhanh


Sự khác nhau và giống nhau giữa waterfall models, incremental models and iterative models?
 <mark>Giống nhau</mark> :
		 - Đều là các mô hình để phát triển phần mềm theo giai đoạn
		 - Quy trình phát triển: đều qua các giai đoạn cơ bản như thu thập yêu cầu , thiết kế, triển khai, kiểm thử và bảo trì
Khác nhau :
<table style="border: 1px solid white;">
  <tr  style="border: 1px solid white;">
    <th>waterfall</th>
    <th>incremental</th>
    <th>iterative</th>
  </tr>
  <tr>
    <td>Tuần tự, tuyến tính</td>
    <td>Phát triển tuyến tính và lặp lại</td>
    <td>Lặp lại</td>
  </tr>
  <tr>
    <td>Không quay lại sửa đổi ở giai đoạn trước</td>
    <td>Có thể phát triển thêm các yêu cầu thêm sau</td>
    <td>Có thể cải thiện sản phẩm qua phản hồi của người</td>
  </tr>
  <tr>
    <td>Phù hợp với dự án có yêu cầu rõ ràng, không thay đổi, dễ dự đoán</td>
    <td>Phù hợp với dự án xác định một phần bộ phận của sản phẩm</td>
    <td>Phù hợp với dự án dự kiến thay đổi nhiều trong quá trình phát triển</td>
  </tr>
</table>
