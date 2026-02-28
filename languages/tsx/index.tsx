import React from 'react'; // React must be imported to use JSX

// Define the component's props with TypeScript types
interface HelloWorldProps {
  title: string;
}

// Define the functional component
const HelloWorld: React.FC<HelloWorldProps> = ({ title }) => {
  return (
    <div>
      <h1>{title}</h1>
      <p>This is a "Hello World" example using TSX.</p>
    </div>
  );
};

export default HelloWorld;
