"use client";

import { useRouter } from "next/navigation";
import React, { useEffect, useState } from "react";
import Calendar from "react-calendar";

type ValuePrice = Date | null;
type Value = ValuePrice | [ValuePrice, ValuePrice];

const EventCalendar = () => {
  const [value, setValue] = useState<Value>(new Date());
  const router = useRouter();

  useEffect(() => {
    if (value instanceof Date) {
      router.push(`?date=${value}`);
    }
  }, [value, router]);

  return <Calendar onChange={setValue} value={value} />;
};

export default EventCalendar;
