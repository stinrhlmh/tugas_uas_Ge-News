function searchRedirect() {
  const input = document.getElementById("searchInput");
  if (!input) return false;

  const query = input.value.trim();
  if (query) {
    window.location.href = `search.html?q=${encodeURIComponent(query)}`;
  }
  return false; // Mencegah form submit reload
}
