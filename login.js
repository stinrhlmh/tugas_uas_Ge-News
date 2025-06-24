class Auth {
  constructor(users) {
    this.users = users;
  }

  login(username, password) {
    return this.users.find(user => user.username === username && user.password === password) || null;
  }
}

// Daftar user (bisa dikembangkan dari JSON/database nantinya)
const users = [
  { username: 'falentino@gmail.com', password: '123', role: 'user' },
  { username: 'meli@gmail.com', password: 'abc', role: 'user' },
  { username: 's.nurhalimahh1@gmail.com', password: '456', role: 'admin' }
];

const auth = new Auth(users);

document.getElementById('loginForm').addEventListener('submit', function(event) {
  event.preventDefault();

  const usernameInput = document.getElementById('email').value.trim();
  const passwordInput = document.getElementById('password').value.trim();

  const user = auth.login(usernameInput, passwordInput);

  if (user) {
    localStorage.setItem('currentUser', JSON.stringify(user));

    if (user.role === 'admin') {
      window.location.href = 'admin.html';
    } else {
      window.location.href = 'dashboard.html';
    }
  } else {
    alert('Email atau kata sandi salah!');
  }
});
