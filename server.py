#!/usr/bin/env python3
import http.server
import socketserver
import os
from urllib.parse import urlparse

class CustomHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory="public", **kwargs)
    
    def do_GET(self):
        # Parse the URL
        parsed_path = urlparse(self.path)
        path = parsed_path.path
        
        # Handle root path
        if path == '/' or path == '':
            self.path = '/index.html'
        
        # Handle routes without .html extension
        elif not path.endswith('.html') and not '.' in os.path.basename(path):
            # Check if directory exists
            potential_path = path.strip('/')
            if os.path.isdir(os.path.join("public", potential_path)):
                self.path = f'{path}/index.html'
            else:
                self.path = f'{path}.html'
        
        # Call parent method
        super().do_GET()

PORT = 3000
Handler = CustomHTTPRequestHandler

print(f"🚀 Servidor rodando em: http://localhost:{PORT}")
print(f"📁 Servindo arquivos da pasta: public/")
print(f"🔗 Principais rotas:")
print(f"   • Home: http://localhost:{PORT}/")
print(f"   • Dashboard: http://localhost:{PORT}/dashboard")
print(f"   • Saque: http://localhost:{PORT}/saque")
print(f"   • Desbloqueio: http://localhost:{PORT}/desbloqueio")
print(f"\n⚡ Pressione Ctrl+C para parar o servidor")

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\n🛑 Servidor interrompido pelo usuário")
        httpd.shutdown() 