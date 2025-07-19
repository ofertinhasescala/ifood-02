export default function Home() {
  return (
    <div>
      <h1>iFood Benefícios</h1>
      <p>Página inicial - redirecionando para arquivos estáticos...</p>
      <script dangerouslySetInnerHTML={{
        __html: `
          if (typeof window !== 'undefined') {
            window.location.href = '/index.html';
          }
        `
      }} />
    </div>
  );
}