# coding: utf-8

class HomesController < ApplicationController
    def top
    end

    def sitemap
    end

    def movies
        # @movies = Eiga.all

        @hash = {}
        request.query_parameters.each do |key, value|
            @hash[key] = value.to_s
        end

        if @hash["is_showing"] == "" || @hash["is_showing"].nil?
            is_showing_query = ["0","1"]
        else
            is_showing_query = @hash["is_showing"]
        end

        if @hash["keyword"] == "" || @hash["keyword"].nil?
            keyword_query = "%"
        else
            keyword_query = '%' + @hash["keyword"] + '%'
        end

        @movies = Eiga.where('name like ?', keyword_query).or(Eiga.where('description like ?', keyword_query)).where(is_showing: is_showing_query)


        # 例 id = 1,3,5 のレコードを取得
        # @member = Member.find(1,3,5)

        # この形を応用してidをURLから取得する場合
        # モデル名.find(params[:id])
        # @member = Member.find(params[:id])
    end
end