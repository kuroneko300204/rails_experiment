class CompanyController < ApplicationController
  def new
    @company = Company.new
    department = @company.build_department
    # department.members.build
    3.times { department.members.build }
  end

  def create
    @company = Company.new(company_params)
    # byebug
    if @company.save
      flash[:success] = 'User created!'
    else
      redirect_to root_url
    end
  end

  private
  def company_params
    # params.require(:company).permit(:company_name, department_attributes:
    #   [
    #     :department_name, members_attributes:
    #       [
    #         :member_name
    #       ]
    #   ]
    # )
    params.require(:company).permit(:company_name, department_attributes:
      [
        :department_name, members_attributes:
          [
            :member_name
          ]
      ]
    )
  end
end
