class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
 


  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end


  post "/login" do
    user = Doctor.find_by(email: params[:email], password:params[:password])
    if user.nil? 
      response = {response:"User doesnt exist!"}
      return response.to_json
    else 
      return user.to_json
    end

  end

  post "/register" do
    user = Doctor.find_by(email: params[:email])
    if user.nil?
      hash = params.reject { |k, v| v.blank? }
      new_user = Doctor.create(hash)
      return new_user.to_json
    else
      response = {response:"User exists!"}
      return response.to_json
    end
    
  end


  get "/patients" do
    Patient.all.to_json
  end

  post "/newPatient" do
    user = Patient.find_by(national_id: params[:national_id])
    if user.nil?
      hash = params.reject { |k, v| v.blank? }
      new_patient = Patient.create(hash)
      return new_patient.to_json
    else
      response = {response:"Patient exists!"}
      return response.to_json
    end
    
  end

  get "/alldoctors" do
    Doctor.count.to_json
  end

  get "/nurses" do
    Nurse.count.to_json
  end

  get "/myappointments/:id" do
    selected = Doctor.find(params[:id])
    if selected.nil?
      response = {response:"No reply!"}
      return response.to_json
    else
    return selected.appointments.count.to_json
    end
  end

  get "/allmyappointments/:id" do
    selected = Doctor.find(params[:id])
    if selected.nil?
      response = {response:"No reply!"}
      return response.to_json
    else
    return selected.appointments.order("created_at DESC").all.to_json
    end
  end

  get "/mynotification/:id" do
    selected = Doctor.find(params[:id])
    if selected.nil?
      response = {response:"No reply!"}
      return response.to_json
    else
    return selected.notifications.all.to_json
    end

  end

  patch '/updatepatient/:id' do
    patient = Patient.find(params[:id])
    hash = params.reject { |k, v| v.blank? }
    updated = patient.update(hash)
    return updated.to_json
  end

  delete '/deletepatient/:id' do
    patient = Patient.find(params[:id])
    if patient.nil?
      response = {response:"No reply"}
      return response.to_json
    else
      patient.destroy
      patient.to_json
    end

  end

  delete '/removenotification/:id' do
    note = Notification.find(params[:id])
    note.destroy
    note.to_json
  end







end
