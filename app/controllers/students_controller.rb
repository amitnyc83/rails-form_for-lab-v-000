class StudentsController < ActionController::Base

def new
  @student = Student.new
end


def create
  @student = Student.new(params[:first_name], params[:last_name])
  @student.save
  redirect_to student_path(@student)
end

def show
  @student = Student.find(params[:id])
end


def edit
  @student= Student.find(params[:id])
end

private


def student_params(*args)
  params.require(:student).permit(*args)
end



end
