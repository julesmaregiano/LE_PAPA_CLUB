function scrollLastPostIntoView() {
  const posts = document.querySelectorAll('.post');
  const lastPost = posts[0];

  if (lastPost !== undefined) {
    lastPost.scrollIntoView();
  };
};

function scrollLastMessageIntoView() {
  const messages = document.querySelectorAll('.message');
  const lastMessage = messages[messages.length - 1];

  if (lastMessage !== undefined) {
    lastMessage.scrollIntoView();
  };
};
