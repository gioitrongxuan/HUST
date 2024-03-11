1. Best-first search
	1. Ý tưởng: Sử dụng hàm đánh giá f(n) cho mỗi nút của cây tìm kiếm
		1. Để đánh giá mức độ "phù hợp " của nút đó
		2. Trong quá trình tìm kiếm, ưu tiên xét các nút có độ phù hợp cao nhất
	2. Cài đặt giải thuật 
		1. • Sắp thứ tự các nút trong cấu trúc fringe theo trật tự giảm dần về mức độ phù hợp
	3. Các trường hợp đặc biệt của giải thuật Best-first search 
		1. • Greedy best-first search 
			1. Hàm đánh giá f(n) = h(n) • Hàm heuristic h(n) đánh giá chi phí để đi từ nút hiện tại n đến nút đích (mục tiêu) • Ví dụ: Trong bài toán tìm đường đi từ Arad đến Bucharest, sử dụng: hSLD(n) = Ước lượng khoảng cách đường thẳng (“chim bay”) từ thành phố hiện tại n đến Bucharest • Phương pháp tìm kiếm Greedy best-first search sẽ xét (phát triển) nút “có vẻ” gần với nút đích (mục tiêu) nhất
			2. Các đặc điểm
				1. Tính hoàn chỉnh : Không
				2. Tính 
		2. • A* search
			1. ý tưởng: tránh việc xét (phát triển) các nhánh tìm kiếm đã xác định (cho tới thời điểm hiện tại) là có chi phí cao 
			2. Sử dụng hàm đánh giá f(n) = g(n)+h(n)
				1. g(n) = chi phí từ nút gốc cho đến nút hiện tại n
				2. h(n) = chi phí ước lượng từ nút hiện tại n tới đích
				3. f(n) = chi phí tổng thể ướng lượng đi qua nút n tới đích
			3. Các ước lượng chấp nhận được
				1. Một ước lượng h(n) được xem là chấp nhận được nếu với mọi nút n: 0<= h(n) <h*(n) trong đó h*(n) là chi phí thật ( thực tế) để đi từ nút n đến đích
				2. Một ước lượng chấp nhận được không bao giờ đánh giá quá coa (overestimate) đối với chi phí để đi tới đích
				 ....slide
				 3. Ước lượng ưu thế
				 4. Ước lương kiên định
- Các giải thuật tìm kiếm cục bộ
	- Tìm kiếm leo đồi: 
		- 