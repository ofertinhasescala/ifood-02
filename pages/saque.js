export default function Saque() {
  return (
    <div>
      <h1>Saque</h1>
      <script dangerouslySetInnerHTML={{
        __html: `
          if (typeof window !== 'undefined') {
            window.location.href = '/saque/index.html';
          }
        `
      }} />
    </div>
  );
}