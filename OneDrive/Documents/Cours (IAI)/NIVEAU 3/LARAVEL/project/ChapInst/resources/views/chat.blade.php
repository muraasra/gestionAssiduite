<div>
    <!-- Breathing in, I calm body and mind. Breathing out, I smile. - Thich Nhat Hanh -->
</div>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat WebSockets</title>
    <script src="{{ mix('js/app.js') }}" defer></script>
</head>
<body>
    <h1>Chat en temps réel</h1>
    
    <div id="messages"></div>

    <input type="text" id="messageInput" placeholder="Tapez un message...">
    <button onclick="sendMessage()">Envoyer</button>

    <script>
        function sendMessage() {
            let message = document.getElementById("messageInput").value;
            
            fetch("/send-message", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                    "X-CSRF-TOKEN": '{{ csrf_token() }}'
                },
                body: JSON.stringify({ message: message })
            }).then(response => response.json())
            .then(data => console.log("Message envoyé:", data));
        }
    </script>
</body>
</html>
