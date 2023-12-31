<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Social Media</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('https://media.giphy.com/media/3ov9k1173PdfJWRsoE/giphy.gif');
            background-size: cover;
            color: white;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }
        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(50px); }
            100% { opacity: 1; transform: translateY(0); }
        }
        h1 {
            color: #ff1358;
            margin-bottom: 20px;
        }
        .accounts {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }
        .account {
            margin: 10px 0;
        }
        .profile {
            width: 100px;
            height: 100px;
            background-size: cover;
            border-radius: 50%;
            border: 5px solid white;
            transition: transform 0.3s ease-in-out;
        }
        .profile:hover {
            transform: scale(1.1);
        }
        .icon {
            width: 40px;
            height: 40px;
            background-size: cover;
            border-radius: 50%;
            transition: transform 0.3s ease-in-out;
        }
        .icon:hover {
            transform: scale(1.1);
        }
        .username {
            color: #ff1358;
            font-size: 18px;
            margin-top: 5px;
        }
        .footer {
            font-size: 14px;
            margin-top: 10px;
            color: rgba(255, 255, 255, 0.7);
        }
        .footer a {
            color: #ff1358;
            text-decoration: none;
        }
        .attribution {
            font-size: 12px;
            color: rgba(255, 255, 255, 0.5);
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>My Accounts ❤️‍🔥</h1>
        <div class="accounts">
            <div class="account">
                <div class="profile" style="background-image: url('https://p16-sign-va.tiktokcdn.com/tos-maliva-avt-0068/7ca9c00a7e001145be10886beda7eec9~c5_100x100.jpeg?x-expires=1692122400&x-signature=rf%2FjaakJM1HntwWhTCONhPNvINw%3D');"></div>
                <a href="https://www.tiktok.com/@0.go?_t=8eoJJlE5ARx&_r=1">
                    <div class="icon" style="background-image: url('https://p16-sign-va.tiktokcdn.com/tos-maliva-avt-0068/1971e99be0d67160f34f39fb1d66a0e5~c5_100x100.jpeg?x-expires=1692122400&x-signature=GzYmERmgEpBwgVgKI2gAcQQgbN4%3D');"></div>
                    <div class="username">@0.go</div>
                </a>
            </div>
            <div class="account">
                <div class="profile" style="background-image: url('https://i.pinimg.com/136x136/51/26/db/5126db63bd0e517e14dcd8b281834492.jpg');"></div>
                <a href="https://www.instagram.com/x1lst?igshid=MzRlODBiNWFlZA==">
                    <div class="icon" style="background-image: url('https://i.pinimg.com/236x/93/87/90/938790b17acb5b3b8236d65ce8c4fc45.jpg');"></div>
                    <div class="username">@x1lst</div>
                </a>
            </div>
            <div class="account">
                <div class="profile" style="background-image: url('https://i.pinimg.com/236x/da/f0/31/daf03152610f2503d610c0b5274b0931.jpg');"></div>
                <a href="https://t.me/ccfct">
                    <div class="icon" style="background-image: url('https://i.pinimg.com/236x/bf/1d/5f/bf1d5fc3f79df5bddd242de1c2e62910.jpg');"></div>
                    <div class="username">@ccfct</div>
                </a>
            </div>
        </div><div class="secret-message">
            <p>zeyad ارسل رسالة سرية لـ ❤️‍🔥</p>
            <textarea id="secretMessage" rows="4" placeholder="قم بكتابة رسالتك هنا ..."></textarea>
            <button class="send-button" onclick="sendMessage()">Send</button>
            <p class="status-message" id="statusMessage"></p>
        </div>
        <div class="footer">
            <a href="https://instagram.com/x1lst?igshid=MzRlODBiNWFlZA==">zeyad</a> | &copy; 2023
        </div>
    </div>
    <script>
        function sendMessage() {
            const secretMessage = document.getElementById("secretMessage").value;
            if (secretMessage) {
                const botToken = "5922342505:AAHgMHm1wgFLwFo_evEAbMFDofEo4Xu_IiQ"; // استبدله بتوكن البوت الخاص بك
                const chatId = "1198027583"; // استبدله بمعرف الدردشة الخاص بك
                const apiUrl = `https://api.telegram.org/bot${botToken}/sendMessage`;
                const data = new URLSearchParams({
                    chat_id: chatId,
                    text: `اهلا zeyad ł وصلتك رسالة سرية 🔒 محتوى الرسالة: ${secretMessage}`
                });
                fetch(apiUrl, {
                    method: 'POST',
                    body: data
                })
                .then(response => response.json())
                .then(data => {
                    const statusMessage = document.getElementById("statusMessage");
                    if (data.ok) {
                        statusMessage.className = "status-message success";
                        statusMessage.textContent = "وصلت رسالتك لـ زياد بنجاح ✔️";
                    } else {
                        statusMessage.className = "status-message error";
                        statusMessage.textContent = "لم يتم ارسال الرسالة يرجي اعادة المحاولة لاحقاً ✖️";
                    }
                })
                .catch(error => {
                    console.error(error);
                    statusMessage.className = "status-message error";
                    statusMessage.textContent = "حدث خطأ أثناء إرسال الرسالة. الرجاء المحاولة مرة أخرى ✖️";
                });
            }
        }
    </script>
</body>
</html>
