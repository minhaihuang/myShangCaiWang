package com.hhm.scw.web.action;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;
import com.hhm.scw.domain.Category;
import com.hhm.scw.domain.Classify;
import com.hhm.scw.domain.Goods;
import com.hhm.scw.domain.User;
import com.hhm.scw.service.CategoryService;
import com.hhm.scw.service.ClassifyService;
import com.hhm.scw.service.GoodsService;
import com.hhm.scw.util.Conditions;
import com.hhm.scw.util.Conditions.Operator;

import com.hhm.scw.util.DataTablesPage;
import com.hhm.scw.util.Utils;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class GoodsAction extends ActionSupport implements ModelDriven<Goods> {
	private GoodsService goodsService = null;
	private ClassifyService classifyService = null;
	private CategoryService categoryService = null;
	private Goods goods = new Goods();

	// 文件上传
	private File upload = null;
	private String uploadFileName = null;
	private String uploadContentType = null;

	private String classify = null;

	private String goodsId = null;

	private String detail = null;

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	// 下面的三个数据是分页专用的。
	// 注意生产的set和get方法要修改其首字母
	private String sEcho;
	private int iDisplayStart;// 页面的初始索引
	private int iDisplayLength;// 每页显示的条数

	// 不要忘了生成相应的set和get方法

	public String getSEcho() {
		return sEcho;
	}

	public void setSEcho(String sEcho) {
		this.sEcho = sEcho;
	}

	public int getIDisplayStart() {
		return iDisplayStart;
	}

	public void setIDisplayStart(int iDisplayStart) {
		this.iDisplayStart = iDisplayStart;
	}

	public int getIDisplayLength() {
		return iDisplayLength;
	}

	public void setIDisplayLength(int iDisplayLength) {
		this.iDisplayLength = iDisplayLength;
	}

	public String getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}

	public String getClassify() {
		return classify;
	}

	public void setClassify(String classify) {
		this.classify = classify;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	private String categoryId = null;// 获取商品大类的小类时使用

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public GoodsService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	public ClassifyService getClassifyService() {
		return classifyService;
	}

	public void setClassifyService(ClassifyService classifyService) {
		this.classifyService = classifyService;
	}

	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public Goods getModel() {

		return goods;
	}

	/**
	 * 导航到添加商品的页面
	 * 
	 * @return
	 */
	public String goodsAdd() {
		// 获取所有的商品大类
		List<Category> categoryList = this.categoryService.findAll();

		// 设置到web域中
		ServletActionContext.getRequest().setAttribute("categoryList",
				categoryList);

		return "goodsAdd";
	}

	/**
	 * 根据商品大类的id来获取所属的商品小类
	 * 
	 * @return
	 * @throws IOException
	 */
	public String getClassifyById() throws IOException {

		List<Classify> classifyList = this.categoryService
				.getClassifyById(categoryId);

		// 以json格式返回数据

		String classifyJson = null;
		try {
			Gson gson = new Gson();

			classifyJson = gson.toJson(classifyList);
			System.out.println(classifyJson);
		} catch (Exception e) {

			e.printStackTrace();
		}

		// 千万不要少了这一句
		ServletActionContext.getResponse().setContentType(
				"text/json;charset=utf-8");
		ServletActionContext.getResponse().getWriter().print(classifyJson);

		return null;
	}

	/**
	 * 添加商品
	 * 
	 * @return
	 * @throws IOException
	 */
	public String add() throws IOException {

		if (upload != null) {
			// 文件上传，获取文件的上传路径
			String goodsMaxImgPath = ServletActionContext.getServletContext()
					.getRealPath("/upload/img");
			String goodsMinImgPath = goodsMaxImgPath;

			File tempFile = new File(goodsMaxImgPath);
			if (tempFile.exists() == false) {
				tempFile.mkdirs();
			}
			System.out.println("detail-->" + goods.getDetail());

			System.out.println("detail-->" + detail);
			String uuidTemp = UUID.randomUUID().toString();

			String goodsMaxImg = "/" + uuidTemp + uploadFileName;
			String goodsMinImg = "/" + uuidTemp + "min" + uploadFileName;

			// 设置大图片和小图片的路径
			String tempStr = "/" + uuidTemp;
			goodsMaxImgPath += tempStr + uploadFileName;
			goodsMinImgPath += tempStr + "min" + uploadFileName;

			// 上传文件
			upload.renameTo(new File(goodsMaxImgPath));

			// 上传小图片文件
			File minImgFile = new File(goodsMinImgPath);
			Utils.resizeImage(new File(goodsMaxImgPath), minImgFile, 120, 120);

			// 重新构造存放图片的路径，使用相对路径即可，否则将无法访问该图片
			goodsMaxImgPath = "/upload/img" + goodsMaxImg;
			goodsMinImgPath = "/upload/img" + goodsMinImg;

			// 封装数据
			goods.setGoodsMaxImgPath(goodsMaxImgPath);
			goods.setGoodsMinImgPath(goodsMinImgPath);
		}

		// System.out.println(classify);
		// 切割选择的小类的id组成的字符串
		String[] classifyIds = classify.split(",");
		// 获取相应的小类的set集合
		Set<Classify> classifys = this.classifyService
				.getClassifysSet(classifyIds);

		goods.setClassifys(classifys);

		// 保存数据到数据库
		this.goodsService.add(goods);

		return "add";
	}

	/**
	 * 导航到商品详情页面
	 */
	public String goodsDetail() {
		System.out.println(goodsId);

		// 根据id找到该商品，使用modelDriven来获取id，其他的获取id方式可能获取为空
		Goods destGoods = this.goodsService.findById(goods.getGoodsId());

		// 设置到web域中
		ServletActionContext.getRequest().setAttribute("goods", destGoods);

		return "goodsDetail";
	}

	/**
	 * 导航到商品管理页面
	 * 
	 * @return
	 */
	public String goodsHome() {
		
		return "goodsHome";
	}

	/**
	 * 获取商品列表
	 * 
	 * @return
	 * @throws IOException
	 */
	public String page() throws IOException {
		// 准备对象
		DataTablesPage<Goods> page = new DataTablesPage<Goods>();
		// 封装数据
		page.setSEcho(sEcho);
		page.setIDisplayStart(iDisplayStart);
		page.setIDisplayLength(iDisplayLength);

		// 加入查询条件
		Conditions conditions = new Conditions();
		// 支持模糊查询
		conditions.addCondition("goodsName", goods.getGoodsName(),
				Operator.LIKE);

		// 继续完善page数据
		this.goodsService.getPageData(page, conditions);

		List<Goods> goodsList = page.getData();
		for (Goods goods : goodsList) {
			System.out.println(goods.getGoodsName());
		}
		// 以json格式返回数据
		Gson gson = new Gson();
		String jsonResult = gson.toJson(page);

		System.out.println(1234567);

		// 千万不要少了这一句
		ServletActionContext.getResponse().setContentType(
				"text/json;charset=utf-8");
		ServletActionContext.getResponse().getWriter().print(jsonResult);

		return null;// 利用ajax，不用struts处理
	}

	/**
	 * 删除商品
	 * 
	 * @return
	 */
	public String goodsDelete() {

		System.out.println(goods.getGoodsId());
		// 根据id删除。
		this.goodsService.deleteById(goods.getGoodsId());

		return "goodsDelete";
	}

	/**
	 * 跳转到商品的修改页面
	 * 
	 * @return
	 */
	public String goodsEdit() {

		// 根据id找到该商品，使用modelDriven来获取id，其他的获取id方式可能获取为空
		Goods destGoods = this.goodsService.findById(goods.getGoodsId());

		// 获取所有的商品大类
		List<Category> categoryList = this.categoryService.findAll();

		// 名字是大类，集合是小类
		Map<String, List<Classify>> categoryClassifyMap = new HashMap<String, List<Classify>>();

		// 获取每一个大类对应的小类集合
		for (Category category : categoryList) {
			List<Classify> classifyList = this.categoryService
					.getClassifyById(category.getCategoryId());

			if (classifyList != null) {
				categoryClassifyMap.put(category.getCategoryName(),
						classifyList);
			}
		}

		// 设置到web域中
		ServletActionContext.getRequest().setAttribute("categoryClassifyMap",
				categoryClassifyMap);

		// 设置到web域中
		ServletActionContext.getRequest().setAttribute("goods", destGoods);

		return "goodsEdit";
	}

	/**
	 * 更新商品（修改商品）
	 * 
	 * @return
	 * @throws IOException
	 */
	public String updateGoods() throws IOException {
		add();// 调用add方法更新

		return "updateGoods";
	}

	/**
	 * 通过商品的名字进行模糊搜索
	 */

	public String findGoodsByName() {
		// 加入查询条件
		Conditions conditions = new Conditions();
		// 支持模糊查询
		conditions.addCondition("goodsName", goods.getGoodsName(),
				Operator.LIKE);
		List<Goods> goodsList = this.goodsService.findByConditions(conditions);

		// 设置web域中
		ServletActionContext.getRequest().setAttribute("goodsList", goodsList);

		return "goodsSearch";
	}
	
	/**
	 * 检查商品名称的唯一性
	 * @return
	 * @throws IOException 
	 */
	public String checkUnique() throws IOException{
		
		String goodsName=goods.getGoodsName();
		
		boolean isUnique=this.goodsService.checkUnique(goodsName);
		
		try {
			System.out.println("the method is being used");
			
			ServletActionContext.getResponse().getWriter().write(isUnique+"");
		} catch (IOException e) {
			System.out.println("服务器错误");
			e.printStackTrace();
		}
		
		//因为不需要struts进行页面导航，所以此处一定要声明为null
		return null;
	}
}
