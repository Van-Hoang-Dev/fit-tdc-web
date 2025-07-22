const openBtn = document.getElementById("open-chat-popup");
const closeBtn = document.getElementById("close-chat-popup");
const popup = document.getElementById("chatbot-container");

const showPopup = () => {
    openBtn.classList.add("translate-y-10", "opacity-0", "pointer-events-none");
    setTimeout(() => {
        popup.classList.remove(
            "translate-y-10",
            "opacity-0",
            "scale-95",
            "pointer-events-none"
        );
        popup.classList.add("translate-y-0", "opacity-100", "scale-100");
    }, 250);
};

const hidePopup = () => {
    popup.classList.remove("translate-y-0", "opacity-100", "scale-100");
    popup.classList.add(
        "translate-y-10",
        "opacity-0",
        "scale-95",
        "pointer-events-none"
    );
    setTimeout(() => {
        openBtn.classList.remove(
            "translate-y-10",
            "opacity-0",
            "pointer-events-none"
        );
    }, 250);
};

openBtn.addEventListener("click", showPopup);
closeBtn.addEventListener("click", hidePopup);

// Click outside close popup
document.addEventListener("click", (e) => {
    const isClickInsidePopup = popup.contains(e.target);
    const isClickOnButton = openBtn.contains(e.target);

    if (!isClickInsidePopup && !isClickOnButton) {
        // if popup showing → hide
        const isVisible = popup.classList.contains("opacity-100");
        if (isVisible) {
            hidePopup();
        }
    }
});

const form = document.getElementById("askForm");
const chatBox = document.getElementById("chatBox");
const sendIcon = document.getElementById("sendIcon");
const sendBtn = document.getElementById("sendBtn");
const clearChatBtn = document.getElementById("clearChatBtn");

// Load lịch sử chat khi trang load
window.addEventListener("DOMContentLoaded", () => {
    const chatHistory = JSON.parse(localStorage.getItem("chatHistory") || "[]");

    if (chatHistory.length === 0) {
        addGreetingMessage();
    } else {
        for (const item of chatHistory) {
            const msg = document.createElement("div");
            msg.className = `
                rounded-md shadow-md py-2 px-4 w-fit
                ${
                    item.role === "user"
                        ? "bg-blue-500 text-white ml-auto my-4"
                        : "border border-gray-50 bg-white text-black mr-auto my-2"
                }
            `;
            msg.innerHTML = marked.parse(item.message);
            chatBox.appendChild(msg);
        }
    }

    chatBox.scrollTop = chatBox.scrollHeight;
});

// Nút xóa lịch sử
clearChatBtn.addEventListener("click", () => {
    localStorage.removeItem("chatHistory");
    chatBox.innerHTML = "";
    addGreetingMessage();
});

function addGreetingMessage() {
    const greetings = [
        "👋 Xin chào! Tôi có thể giúp gì cho bạn hôm nay? 😊",
        "🎓 Chào mừng bạn đến với trợ lý khoa CNTT. Bạn cần hỗ trợ gì nào?",
        "🤖 Xin chào! Hỏi gì mình trả lời hết nha!",
        "📘 Chào bạn! Mình ở đây để hỗ trợ bạn với các thông tin về khoa CNTT.",
        "✨ Rất vui được gặp bạn! Bạn cần tìm thông tin gì?",
        "📢 Mình luôn sẵn sàng hỗ trợ bạn với mọi thắc mắc về ngành CNTT nhé!",
        "🧑‍💻 Bạn đang quan tâm đến giảng viên, chương trình học hay điều gì khác? Mình sẵn sàng hỗ trợ!",
        "🚀 Chào bạn! Hãy đặt câu hỏi để mình có thể giúp bạn nhanh chóng nhất!",
        "🔍 Cần tìm thông tin gì về khoa CNTT? Cứ hỏi mình nhé!",
        "💬 Mình là trợ lý ảo của khoa CNTT. Bạn muốn biết gì nào?",
    ];

    // Tạo DOM hiển thị
    const greeting = greetings[Math.floor(Math.random() * greetings.length)];
    const msg = document.createElement("div");
    msg.className =
        "rounded-md shadow-md border border-gray-50 py-2 px-4 w-fit bg-white text-black mr-auto my-2";
    msg.innerHTML = `<p>${greeting}</p>`;
    chatBox.appendChild(msg);

    // Lưu vào localStorage
    const chatHistory = JSON.parse(localStorage.getItem("chatHistory") || "[]");
    chatHistory.push({ role: "bot", message: greeting });
    localStorage.setItem("chatHistory", JSON.stringify(chatHistory));

    chatBox.scrollTop = chatBox.scrollHeight;
}

// Xử lý gửi câu hỏi và nhận phản hồi
form.addEventListener("submit", async (e) => {
    e.preventDefault();
    const question = form.question.value.trim();
    if (!question) return;

    // Create user message in right side
    const userMessage = document.createElement("div");
    userMessage.className = "rounded-md shadow-md py-2 px-4 w-fit bg-blue-500 text-white ml-auto my-4 w-[90%]";
    userMessage.style.maxWidth = '90%'
    userMessage.innerHTML = `<p>${question}</p>`;
    chatBox.appendChild(userMessage);

    // Reset input
    form.question.value = "";

    // Call API
    try {
        // Disable nút gửi
        sendBtn.disabled = true;
        sendBtn.classList.remove("cursor-pointer");
        sendBtn.classList.add("cursor-wait");
        sendIcon.innerHTML = `<i class="fa-solid fa-square  w-[20px] h-[20px] text-gray-600 animate-pulse"></i>`;

        // Loading animation
        const loadingMessage = document.createElement("div");
        loadingMessage.className =
            "rounded-md shadow-md border border-gray-50 py-2 px-4 w-fit";
        loadingMessage.innerHTML = `
        <div class="container-loading">
            <div class="loading-block"></div>
            <div class="loading-block"></div>
            <div class="loading-block"></div>
        </div>
    `;
        chatBox.appendChild(loadingMessage);
        chatBox.scrollTop = chatBox.scrollHeight;

        // Gửi câu hỏi đến API
        const res = await fetch("/api/ask-chatbot", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ question: question }),
        });

        const data = await res.json();
        loadingMessage.remove();

        // ⚠️ If backend error (status 4xx or 5xx)
        if (!res.ok) {
            responseError();
            return;
        }

        // Create bot message (left side)
        const botMessage = document.createElement("div");
        botMessage.className =
            "rounded-md shadow-md border border-gray-50 py-2 px-4 w-fit bg-white text-black mr-auto my-2";
        botMessage.innerHTML = marked.parse(data.answer);
        chatBox.appendChild(botMessage);

        // Lưu vào localStorage
        let history = JSON.parse(localStorage.getItem("chatHistory") || "[]");
        history.push({ role: "user", message: question });
        history.push({ role: "bot", message: data.answer });
        localStorage.setItem("chatHistory", JSON.stringify(history));

        // Auto scroll to bottom
        chatBox.scrollTop = chatBox.scrollHeight;

        // Enable btn send
        enableSendBtn();
    } catch (err) {
        console.error("Lỗi khi gửi yêu cầu!");
        enableSendBtn();
        responseError();
        return;
    }
});

// Hàm bật lại nút gửi
function enableSendBtn() {
    sendBtn.disabled = false;
    sendBtn.classList.add("cursor-pointer");
    sendBtn.classList.remove("cursor-wait");
    sendIcon.innerHTML = `
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24"
            fill="none" stroke="#6a7282" stroke-width="2" stroke-linecap="round"
            stroke-linejoin="round" class="lucide lucide-send-horizontal-icon">
        <path d="m3 3 3 9-3 9 19-9Z"></path>
        <path d="M6 12h16"></path>
        </svg>`;
}

// Trả lời nếu có lỗi
function responseError() {
    console.error(`Chatbot error: ${data.error}`);

    // Danh sách các câu trả lời lỗi thân thiện
    const errorMessages = [
        "😕 Xin lỗi, mình chưa có câu trả lời cho bạn lúc này. Bạn thử hỏi lại theo cách khác nhé!",
        "🤔 Mình đang hơi bối rối với câu hỏi này... Bạn có thể diễn đạt lại không?",
        "📄 Mình không tìm thấy thông tin phù hợp trong tài liệu. Bạn vui lòng hỏi chi tiết hơn nhé!",
        "😅 Có vẻ như câu hỏi vượt quá khả năng hiện tại của mình rồi.",
        "🧐 Hãy thử hỏi cụ thể hơn một chút, mình sẽ cố gắng trả lời thật tốt!",
        "🤖 Oops! Mình chưa có dữ liệu liên quan đến câu hỏi này. Bạn thử lại nhé!",
        "❌ Xin lỗi, mình chưa có câu trả lời cho bạn lúc này. Bạn thử hỏi lại sau nhé!",
    ];

    const randomMessage =
        errorMessages[Math.floor(Math.random() * errorMessages.length)];

    const errorMessage = document.createElement("div");
    errorMessage.className =
        "rounded-md border border-red-300 bg-red-50 text-red-700 px-4 py-2 w-fit mr-auto my-2 shadow";
    errorMessage.textContent = randomMessage;
    chatBox.appendChild(errorMessage);
    chatBox.scrollTop = chatBox.scrollHeight;

    enableSendBtn();
    return;
}
