class DoctorsController < ApplicationController
    #responsible for anything involving our doctor

    #signup create new obj
    get '/signup' do
        erb :"doctors/signup"
    end

    post '/signup' do #process signup form
        doctor = Doctor.new(params)

        if doctor.username !=
    end




    #login --read obj
    #logout --delete action
end