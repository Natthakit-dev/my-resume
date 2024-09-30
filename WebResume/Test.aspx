<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Resume</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <style>
        /* CSS เพื่อแสดงข้อความเมื่อโฮเวอร์บนองค์ประกอบ */
        .notification {
            position: relative;
            display: inline-block;
        }

        .notification .tooltip {
            visibility: hidden;
            width: 120px;
            background-color: black;
            color: white;
            text-align: center;
            border-radius: 6px;
            padding: 5px 0;

            /* กำหนดให้ป็อปอัปเมื่อโฮเวอร์ */
            position: absolute;
            z-index: 1;
            bottom: 125%;
            left: 50%;
            margin-left: -60px;
        }

        .notification:hover .tooltip {
            visibility: visible;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Hover over me" ToolTip="This is a tooltip" />
        </div>
    </form>
</body>
    <script>
        fetch('https://jsonplaceholder.typicode.com/posts')
            .then(response => {
                // ตรวจสอบว่าการตอบสนองได้รับการตอบรับอย่างถูกต้อง
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                // แปลงข้อมูลที่ได้รับเป็น JSON
                return response.json();
            })
            .then(data => {
                // ทำงานกับข้อมูลที่ได้รับ
                console.log(data);
            })
            .catch(error => {
                // จัดการกับข้อผิดพลาด
                console.error('There was a problem with the fetch operation:', error);
            });
    </script>
</html>
