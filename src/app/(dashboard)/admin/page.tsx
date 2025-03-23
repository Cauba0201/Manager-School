import AttendanceChartContainer from "@/components/forms/AttendanceChartContainer";
import CountChartContainer from "@/components/forms/CountChartContainer";
import EventCalendarContainer from "@/components/forms/EventCalendarContainer";
import FinanceChart from "@/components/forms/FinanceChart";
import UserCard from "@/components/forms/UserCard";
import React from "react";

const AdminPage = ({
  searchParams,
}: {
  searchParams: { [key: string]: string | undefined };
}) => {
  return (
    <div className="p-4 flex flex-col md:flex-row gap-4">
      {/* LEFT */}
      <div className="w-full lg:w-2/3 flex flex-col gap-8">
        {/* USER CARD */}
        <div className="flex gap-4 justify-between flex-wrap">
          <UserCard type="admin" />
          <UserCard type="teacher" />
          <UserCard type="student" />
          <UserCard type="parent" />
        </div>
        {/* MIDDEL CHART */}
        <div className="flex gap-4 flex-col lg:flex-row">
          <div className="w-full lg:w-1/3 h-[450px]">
            <CountChartContainer />
          </div>
          <div className="w-full lg:w-2/3 h-[450px]">
            <AttendanceChartContainer />
          </div>
        </div>
        {/* BOTTOM CHART */}
        <div className="w-full h-[500px]">
          <FinanceChart />
        </div>
      </div>

      {/* RIGHT */}
      <div className="w-full lg:w-1/3 flex flex-col gap-8"></div>
      <EventCalendarContainer searchParams={searchParams} />
    </div>
  );
};

export default AdminPage;
