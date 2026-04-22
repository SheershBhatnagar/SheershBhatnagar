import { lazy, Suspense, useEffect, useState } from "react";

const CustomCursor = lazy(() => import("./CustomCursor"));

const DesktopCustomCursor = () => {
  const [enabled, setEnabled] = useState(false);

  useEffect(() => {
    setEnabled(window.matchMedia("(pointer: fine)").matches);
  }, []);

  if (!enabled) return null;

  return (
    <Suspense fallback={null}>
      <CustomCursor />
    </Suspense>
  );
};

export default DesktopCustomCursor;