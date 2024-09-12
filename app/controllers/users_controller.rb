class UsersController < ApplicationController
  def index
    @users = User.all  # ดึงข้อมูลผู้ใช้ทั้งหมดจากฐานข้อมูล
  end

  def new
  end

  def create
  end
end
