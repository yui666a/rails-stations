class HomesController < ApplicationController
    def top
    end

    def sitemap
    end

    def movies
        @movies = Eiga.all
        # 例 id = 1,3,5 のレコードを取得
        # @member = Member.find(1,3,5)

        # この形を応用してidをURLから取得する場合
        # モデル名.find(params[:id])
        # @member = Member.find(params[:id])
    end
end