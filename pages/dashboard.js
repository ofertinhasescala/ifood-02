export default function Dashboard() {
  return (
    <div>
      <h1>Dashboard</h1>
      <script dangerouslySetInnerHTML={{
        __html: `
          if (typeof window !== 'undefined') {
            window.location.href = '/dashboard/index.html';
          }
        `
      }} />
    </div>
  );
}