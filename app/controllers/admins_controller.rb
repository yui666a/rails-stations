# coding: utf-8

class AdminsController < ApplicationController
    protect_from_forgery

    def movies
        @movies = Eiga.all
        # 例 id = 1,3,5 のレコードを取得
        # @member = Member.find(1,3,5)

        # この形を応用してidをURLから取得する場合
        # モデル名.find(params[:id])
        # @member = Member.find(params[:id])
    end

    def new
    end

    def create
        post = Eiga.new
        post.name = params[:name]
        post.year = params[:year]
        post.description = params[:description]
        post.image_url = params[:image_url]
        post.is_showing = params[:is_showing]

        begin
            post.save!
            flash[:success] = 'ユーザー登録が完了しました'
            redirect_to '/admin/movies'
        rescue ActiveRecord::RecordNotUnique
            flash[:alert] = 'このタイトルはすでに登録されています'
            render :new, status: 400
        # rescue ActiveRecord::RecordInvalid
        #     errors.add(:invalid_error, "が含まれています")
        #     return false
        # rescue ActiveRecord::RecordNotSaved
        #     errors.add(:save_error, "保存に失敗しました")
        #     return false
        # rescue
        #     errors.add(:save_error, "に失敗しました")
        #     return false
        end
    end

    def edit
        # @id = params[:id]
        @movies = Eiga.where(id: params[:id])
    end
    def edit_redirect
        redirect_to '/admin/movies/' + params[:id] + "/edit"
    end

    def update
        base = Eiga.where(id: params[:id])
        begin
            base.update(name: params[:name], year: params[:year], description: params[:description], image_url: params[:image_url], is_showing: params[:is_showing])
            redirect_to '/admin/movies'
        rescue ActiveRecord::RecordNotUnique
            flash[:alert] = 'このタイトルはすでに登録されています'
            render :new, status: 400
        end
    end

    def delete
        begin
            @eiga = Eiga.find_by(id: params[:id])
            @eiga.delete
            redirect_to '/admin/movies'
        rescue NoMethodError
            flash[:alert] = '該当するidの映画が存在しません'
            render :new, status: 400
        end

    end


end