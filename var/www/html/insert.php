<?php 

    error_reporting(E_ALL); 
    ini_set('display_errors',1); 

    include('dbcon.php');


    if( ($_SERVER['REQUEST_METHOD'] == 'POST')) 
    {
	$UserID=$_POST['UserID'];
	$Password=$_POST['Password'];
        $Name=$_POST['Name'];
	$Email=$_POST['Email'];
	$Phone=$_POST['Phone'];

        if(empty($UserID)){
            $errMSG = "아이디를 입력하세요.";
        }
        else if(empty($Password)){
            $errMSG = "비밀번호를 입력하세요.";
        }
	else if(empty($Name)){
	    $errMSG = "이름을 입력하세요.";
	}
	else if(empty($Email)){
	    $errMSG = "이메일을 입력하세요.";
	}
	else if(empty($Phone)){
	    $errMSG = "핸드폰번호를 입력하세요.";
	}

        if(!isset($errMSG))
        {
            try{
                $stmt = $con->prepare('INSERT INTO AppUser(UserID, Password, Name, Email, Phone) VALUES(:UserID, :Password, :Name, :Email, :Phone)');
                $stmt->bindParam(':UserID', $UserID);
                $stmt->bindParam(':Password', $Password);
		$stmt->bindParam(':Name', $Name);
		$stmt->bindParam(':Email', $Email);
		$stmt->bindParam(':Phone', $Phone);

                if($stmt->execute())
                {
                    $successMSG = "새로운 사용자를 추가했습니다.";
                }
                else
                {
                    $errMSG = "사용자 추가 에러";
                }

            } catch(PDOException $e) {
                die("Database error: " . $e->getMessage()); 
            }
        }

    }
?>

<?php 
   
    if (isset($successMSG)) echo $successMSG;

	$android = strpos($_SERVER['HTTP_USER_AGENT'], "Android");
   
    if( !$android )
    {
?>


<html>
   <body>
        <?php 
        if (isset($errMSG)) echo $errMSG;
        if (isset($successMSG)) echo $successMSG;
        ?>
        
        <form action="<?php $_PHP_SELF ?>" method="POST">
            UserID: <input type = "varchar" name = "UserID" />
            Password: <input type = "varchar" name = "Password" />
	    Name: <input type = "varchar" name = "Name" />
	    Email: <input type = "varchar" name = "Email" />
	    Phone" <input type = "varchar" name = "Phone" />


            <input type = "submit" name = "submit" />
        </form>
   
   </body>
</html>

<?php 
    }
?>


