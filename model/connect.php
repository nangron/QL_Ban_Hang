
 <?php
        class connect {
            // Khởi tạo thuộc tính cho lớp connect
            var $db=null;
            //Kết nối database
            public function __construct()
            {
                $dsn='mysql:host=mysql.hostinger.vn;dbname=u676231646_text';
                $user='u676231646_nang';
                $pass='789112119';
                $this->db=new PDO($dsn,$user,$pass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
            }
        
            // Lấy tất cả dữ liệu từ database
            public function getList($select)
            {
                $results = $this->db->query($select);
                return $results;
            }
            
            //Tạo phương thức lấy 1 kết quả của bảng
            
             public function getInstance($select)
             { 
                $results = $this->db->query($select);
                $result = $results->fetch();
                return $result;
             }
            
            //Tạo phương thức thực thi các câu lệnh Insert, Update, Delete:
            public function exec($query)
             {
                $result = $this->db->exec($query);
                return $result; 
             }
             
             
             
                     
             
        }
        ?>