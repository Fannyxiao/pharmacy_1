use pharmacy;
CREATE TABLE
IF NOT EXISTS _drugshop (
	drugid INT PRIMARY KEY auto_increment NOT NULL,
	_admin_id INT NOT NULL,
	-- ����Աid,���������_admin��
	drugtype INT (50),
	-- ҩƷ����
	drugtitle VARCHAR (50),
	-- ҩƷ����
	drugtext VARCHAR (2000),
	-- ҩƷ����
	price DOUBLE (10, 2),
	-- ҩƷ�۸�
	drugnumber INT,
	-- ҩƷ����
	image VARCHAR (1000),
	-- ��ƷͼƬ
	time date,
	-- �ϼ�ʱ��
	INDEX _admin_id (_admin_id),
	FOREIGN KEY (_admin_id) REFERENCES _admin (id) ON DELETE CASCADE
);

CREATE TABLE
IF NOT EXISTS _car (
	carid INT PRIMARY KEY auto_increment NOT NULL,
	_user_id INT NOT NULL,
	-- �û�Աid,���������_user��
	_drug_id INT NOT NULL,
	-- ҩƷid�����������_drugshop��	
	number INT NOT NULL,
	-- ����
	time date
	-- ���빺�ﳵʱ��
);

CREATE TABLE
IF NOT EXISTS _order (
	orderid INT PRIMARY KEY auto_increment NOT NULL,
	_user_id INT NOT NULL,
	-- �û�id,���
	memo VARCHAR(2000),
	-- ��ע
	orderdate date,
	-- �ϼ�ʱ��
	shipdate date,
	-- ����ʱ��
	hassend  int(5),
	-- �Ƿ񷢻�
	hasreceive int(5),
	-- �Ƿ��ջ�
	receieve VARCHAR(2000)
	-- �ջ���ַ
);

CREATE TABLE
IF NOT EXISTS _drugreply (
	drugreplyid INT PRIMARY KEY auto_increment NOT NULL,
	_user_id INT,
	-- �û�id,���������_user��
	_admin_id INT,
	-- ����Աid�����������_admin��
	_drug_drugid INT NOT NULL,
	-- ��Ʒ��ţ���������_drugshop��
	pid INT DEFAULT 0,
	-- ���׽ڵ�
	rootid INT DEFAULT 0,
	-- �Ƿ���Ҷ�ӽڵ� 
	replytext VARCHAR (2000) NOT NULL,
	-- ��������
	replydate date,
	-- ����ʱ��
	image VARCHAR (1000)
);