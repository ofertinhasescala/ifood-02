export default function Desbloqueio() {
  return (
    <div>
      <h1>Desbloqueio</h1>
      <script dangerouslySetInnerHTML={{
        __html: `
          if (typeof window !== 'undefined') {
            window.location.href = '/desbloqueio/index.html';
          }
        `
      }} />
    </div>
  );
}