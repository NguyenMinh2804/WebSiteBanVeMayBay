using ASPNETCore_StoredProcs.Models;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace ASPNETCore_StoredProcs.Data
{
    public class chanBayRespone
    {
        private readonly string _connectionString;

        public chanBayRespone(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("defaultConnection");
        }

        //public DataTable GetAll(string diemDi,string diemDen)
        //{
        //    DataTable dt = new DataTable();
        //    using (SqlConnection sql = new SqlConnection(_connectionString))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("GetAll", sql))
        //        {
        //            cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //            cmd.Parameters.Add(new SqlParameter("@diemDi",diemDi));
        //            cmd.Parameters.Add(new SqlParameter("@diemDen", diemDen));
        //            sql.Open();

        //            using (SqlDataAdapter sqlAdapter = new SqlDataAdapter(cmd))
        //            {
        //                sqlAdapter.Fill(dt);

        //                return dt;
        //            }
        //        }
        //    }
        //}

        private chanBay MapToValue(SqlDataReader reader)
        {
            return new chanBay()
            {
                IDChan = (int)reader["IDChan"],
                IDHang = reader["IDHang"].ToString(),
                IDLoaiMayBay = reader["IDLoaiMayBay"].ToString(),
                DiemDi = reader["DiemDi"].ToString(),
                SanBayDi = reader["SanBayDi"].ToString(),
                SanBayDen = reader["SanBayDen"].ToString(),
                DiemDen = reader["DiemDen"].ToString(),
                NgayDi = (DateTime)reader["NgayDi"],
                ThoiGianBay = (float)reader["ThoiGianBay"],
                NgayDen = (DateTime)reader["NgayDen"],
                HanhLy = (float)reader["HanhLy"],
                TongSlVe = (int)reader["TongSlVe"]
            };
        }

        public DataTable Sreach_Ticket(string diemDi, string diemDen, int khuHoi, DateTime NgayDi, DateTime NgayVe, int SlNgLon, int SlTreEm, int SlTreSs)
        {
            DataTable dt = new DataTable();
            using (SqlConnection sql = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Sreach_Tikect", sql))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@DiemDen", diemDen));
                    cmd.Parameters.Add(new SqlParameter("@DiemDi", diemDi));
                    cmd.Parameters.Add(new SqlParameter("@KhuHoi", khuHoi));
                    cmd.Parameters.Add("@ngayDi", SqlDbType.DateTime2).Value = NgayDi;
                    cmd.Parameters.Add("@ngayVe", SqlDbType.DateTime2).Value = NgayVe;
                    cmd.Parameters.Add(new SqlParameter("@SLNguoiLon", SlNgLon));
                    cmd.Parameters.Add(new SqlParameter("@SlTreEm", SlTreEm));
                    cmd.Parameters.Add(new SqlParameter("@SLTreSs", SlTreSs));
                    sql.Open();

                    using (SqlDataAdapter sqlAdapter = new SqlDataAdapter(cmd))
                    {
                        sqlAdapter.Fill(dt);

                        return dt;
                    }
                }
            }
        }
    }
}
