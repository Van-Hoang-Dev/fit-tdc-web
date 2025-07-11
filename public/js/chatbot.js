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

form.addEventListener("submit", async (e) => {
    e.preventDefault();
    const question = form.question.value.trim();
    if (!question) return;

    // Create user message in right side
    const userMessage = document.createElement("div");
    userMessage.className =
        "rounded-md shadow-md py-2 px-4 w-fit bg-blue-500 text-white ml-auto my-4";
    userMessage.innerHTML = `<p>${question}</p>`;
    chatBox.appendChild(userMessage);

    // Reset input
    form.question.value = "";

    // Call API
    try {
        //  Disable btn send
        sendBtn.disabled = true;
        sendBtn.classList.remove("cursor-pointer");
        sendBtn.classList.add("cursor-wait");
        sendIcon.innerHTML = `<i class="fa-solid fa-square  w-[20px] h-[20px] text-gray-600 animate-pulse"></i>`;

        //  Show loading
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

        const res = await fetch("/api/ask-pdf", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ question: question }),
        });

        const data = await res.json();
        loadingMessage.remove();

        // Create bot message (left side)
        const botMessage = document.createElement("div");
        botMessage.className =
            "rounded-md shadow-md border border-gray-50 py-2 px-4 w-fit bg-white text-black mr-auto my-2";
        botMessage.innerHTML = marked.parse(data.answer);
        chatBox.appendChild(botMessage);

        // Auto scroll to bottom
        chatBox.scrollTop = chatBox.scrollHeight;

        // Enable btn send
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
    } catch (err) {
        alert("Lỗi khi gửi yêu cầu!");
    }
});
