use pharmacy;
CREATE TABLE
IF NOT EXISTS _drugshop (
	drugid INT PRIMARY KEY auto_increment NOT NULL,
	_admin_id INT NOT NULL,
	-- 管理员id,外键，引用_admin表
	drugtype INT (50),
	-- 药品类型
	drugtitle VARCHAR (50),
	-- 药品名称
	drugtext VARCHAR (2000),
	-- 药品描述
	price DOUBLE (10, 2),
	-- 药品价格
	drugnumber INT,
	-- 药品数量
	image VARCHAR (1000),
	-- 商品图片
	time date,
	-- 上架时间
	INDEX _admin_id (_admin_id),
	FOREIGN KEY (_admin_id) REFERENCES _admin (id) ON DELETE CASCADE
);

CREATE TABLE
IF NOT EXISTS _car (
	carid INT PRIMARY KEY auto_increment NOT NULL,
	_user_id INT NOT NULL,
	-- 用户员id,外键，引用_user表
	_drug_id INT NOT NULL,
	-- 药品id，外键，引用_drugshop表	
	number INT NOT NULL,
	-- 数量
	time date
	-- 加入购物车时间
);

CREATE TABLE
IF NOT EXISTS _order (
	orderid INT PRIMARY KEY auto_increment NOT NULL,
	_user_id INT NOT NULL,
	-- 用户id,外键
	memo VARCHAR(2000),
	-- 备注
	orderdate date,
	-- 上架时间
	shipdate date,
	-- 发货时间
	hassend  int(5),
	-- 是否发货
	hasreceive int(5),
	-- 是否收获
	receieve VARCHAR(2000)
	-- 收货地址
);

CREATE TABLE
IF NOT EXISTS _drugreply (
	drugreplyid INT PRIMARY KEY auto_increment NOT NULL,
	_user_id INT,
	-- 用户id,外键，引用_user表
	_admin_id INT,
	-- 管理员id，外键，引用_admin表，
	_drug_drugid INT NOT NULL,
	-- 商品编号，用来引用_drugshop表
	pid INT DEFAULT 0,
	-- 父亲节点
	rootid INT DEFAULT 0,
	-- 是否是叶子节点 
	replytext VARCHAR (2000) NOT NULL,
	-- 评论正文
	replydate date,
	-- 评论时间
	image VARCHAR (1000)
);