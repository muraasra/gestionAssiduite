import Echo from "laravel-echo";
import Pusher from "pusher-js";

window.Pusher = Pusher;

window.Echo = new Echo({
    broadcaster: "pusher",
    key: process.env.MIX_PUSHER_APP_KEY,
    wsHost: window.location.hostname,
    wsPort: 6001,
    forceTLS: false,
    disableStats: true,
});

window.Echo.channel("chat")
    .listen(".message.sent", (e) => {
        console.log("Message reçu:", e.message);
        let messageContainer = document.getElementById("messages");
        messageContainer.innerHTML += `<p>${e.message}</p>`;
    });


import './bootstrap';
