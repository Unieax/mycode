	@RequestMapping("/upGoodsx")
	public void upGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int cPage =(Integer) session.getAttribute("cPage");
		String jspName = (String) session.getAttribute("pageName");
		try {
			List<Goods> list = new ArrayList<Goods>();
			if (cPage < 2) {
				cPage = 1;
				list =  adminerService.selectAll(new Page(0, 4));
				request.setAttribute("msg", "已经是第一页了");
				request.setAttribute("goods", list);
				request.getRequestDispatcher("/WEB-INF/jsp/"+jspName).forward(request, response);
			}else {
				cPage--;
				list =  adminerService.selectAll(new Page((cPage-1)*4, 4));
				session.setAttribute("cPage", cPage);
				request.setAttribute("goods", list);
				request.getRequestDispatcher("/WEB-INF/jsp/"+jspName).forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//用户商品向下翻页
	@RequestMapping("/downGoodsx")
	public void downGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int cPage =(Integer) session.getAttribute("cPage");
		String jspName = (String) session.getAttribute("pageName");
		List<Goods> list;
		try {
			list = adminerService.selectAll(new Page(cPage*4, 4));
			if (list.size() == 0) {
				list =  adminerService.selectAll(new Page((cPage-1)*4, 4));
				request.setAttribute("msg", "已经是末页了");
				request.setAttribute("goods", list);
				request.getRequestDispatcher("/WEB-INF/jsp/"+jspName).forward(request, response);
			}else {
				cPage++;
				session.setAttribute("cPage", cPage);
				request.setAttribute("goods", list);
				request.getRequestDispatcher("/WEB-INF/jsp/"+jspName).forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
