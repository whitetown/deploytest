

export default function Home() {
  return (
      <main className="mx-auto max-w-3xl py-8">
        <div className="grid grid-cols-4 gap-4">

            <img src='/red.png' className="w-20 h-20 object-fill bg-gray-400" />
            <img src='/green.png' className="w-20 h-20 object-fill bg-gray-400" />
            <img src='/blue.png' className="w-20 h-20 object-fill bg-gray-400" />
            <img src='/yellow.png' className="w-20 h-20 object-fill bg-gray-400" />

        </div>
        The capital of BURKINAFASO is {process.env.NEXT_PUBLIC_BURKINAFASO}\n{process.env.NEXT_PUBLIC_SECOND_VAR}
      </main>
  );
}
