{"changed":true,"filter":false,"title":"recipes_controller.rb","tooltip":"/app/controllers/recipes_controller.rb","value":"class RecipesController < ApplicationController\n\n  def index\n    @recipes = Recipe.all\n  end\n\n  def show\n   @recipe = Recipe.find(params[:id])\n  end\n\n  def new\n    @recipe = Recipe.new\n  end\n\n  def create\n    @recipe = Recipe.new(recipe_params)\n    @recipe.chef = Chef.find(2)\n\n    if @recipe.save\n      flash[:success] = \"Your recipe was created successfully!\"\n      redirect_to recipes_path\n    else\n      render :new\n    end\n  end\n  \n\n private\n\n   def recipe_params\n     params.require(:recipe).permit(:name, :summary, :description)\n   end\nend","undoManager":{"mark":98,"position":100,"stack":[[{"start":{"row":19,"column":6},"end":{"row":19,"column":7},"action":"remove","lines":["#"],"id":411}],[{"start":{"row":19,"column":6},"end":{"row":19,"column":7},"action":"insert","lines":["f"],"id":412}],[{"start":{"row":19,"column":7},"end":{"row":19,"column":8},"action":"insert","lines":["l"],"id":413}],[{"start":{"row":19,"column":8},"end":{"row":19,"column":9},"action":"insert","lines":["a"],"id":414}],[{"start":{"row":19,"column":9},"end":{"row":19,"column":10},"action":"insert","lines":["s"],"id":415}],[{"start":{"row":19,"column":10},"end":{"row":19,"column":11},"action":"insert","lines":["s"],"id":416}],[{"start":{"row":19,"column":10},"end":{"row":19,"column":11},"action":"remove","lines":["s"],"id":417}],[{"start":{"row":19,"column":10},"end":{"row":19,"column":11},"action":"insert","lines":["h"],"id":418}],[{"start":{"row":19,"column":11},"end":{"row":19,"column":13},"action":"insert","lines":["[]"],"id":419}],[{"start":{"row":19,"column":12},"end":{"row":19,"column":13},"action":"insert","lines":[":"],"id":420}],[{"start":{"row":19,"column":13},"end":{"row":19,"column":14},"action":"insert","lines":["s"],"id":421}],[{"start":{"row":19,"column":14},"end":{"row":19,"column":15},"action":"insert","lines":["u"],"id":422}],[{"start":{"row":19,"column":15},"end":{"row":19,"column":16},"action":"insert","lines":["c"],"id":423}],[{"start":{"row":19,"column":16},"end":{"row":19,"column":17},"action":"insert","lines":["c"],"id":424}],[{"start":{"row":19,"column":17},"end":{"row":19,"column":18},"action":"insert","lines":["e"],"id":425}],[{"start":{"row":19,"column":18},"end":{"row":19,"column":19},"action":"insert","lines":["s"],"id":426}],[{"start":{"row":19,"column":19},"end":{"row":19,"column":20},"action":"insert","lines":["s"],"id":427}],[{"start":{"row":19,"column":21},"end":{"row":19,"column":22},"action":"insert","lines":[" "],"id":428}],[{"start":{"row":19,"column":22},"end":{"row":19,"column":23},"action":"insert","lines":["="],"id":429}],[{"start":{"row":19,"column":23},"end":{"row":19,"column":24},"action":"insert","lines":[" "],"id":430}],[{"start":{"row":19,"column":24},"end":{"row":19,"column":26},"action":"insert","lines":["\"\""],"id":431}],[{"start":{"row":19,"column":25},"end":{"row":19,"column":26},"action":"insert","lines":["T"],"id":432}],[{"start":{"row":19,"column":25},"end":{"row":19,"column":26},"action":"remove","lines":["T"],"id":433}],[{"start":{"row":19,"column":25},"end":{"row":19,"column":26},"action":"insert","lines":["Y"],"id":434}],[{"start":{"row":19,"column":26},"end":{"row":19,"column":27},"action":"insert","lines":["o"],"id":435}],[{"start":{"row":19,"column":27},"end":{"row":19,"column":28},"action":"insert","lines":["u"],"id":436}],[{"start":{"row":19,"column":28},"end":{"row":19,"column":29},"action":"insert","lines":["r"],"id":437}],[{"start":{"row":19,"column":29},"end":{"row":19,"column":30},"action":"insert","lines":[" "],"id":438}],[{"start":{"row":19,"column":30},"end":{"row":19,"column":31},"action":"insert","lines":["r"],"id":439}],[{"start":{"row":19,"column":31},"end":{"row":19,"column":32},"action":"insert","lines":["e"],"id":440}],[{"start":{"row":19,"column":32},"end":{"row":19,"column":33},"action":"insert","lines":["c"],"id":441}],[{"start":{"row":19,"column":33},"end":{"row":19,"column":34},"action":"insert","lines":["i"],"id":442}],[{"start":{"row":19,"column":34},"end":{"row":19,"column":35},"action":"insert","lines":["p"],"id":443}],[{"start":{"row":19,"column":35},"end":{"row":19,"column":36},"action":"insert","lines":["e"],"id":444}],[{"start":{"row":19,"column":36},"end":{"row":19,"column":37},"action":"insert","lines":[" "],"id":445}],[{"start":{"row":19,"column":37},"end":{"row":19,"column":38},"action":"insert","lines":["w"],"id":446}],[{"start":{"row":19,"column":38},"end":{"row":19,"column":39},"action":"insert","lines":["a"],"id":447}],[{"start":{"row":19,"column":39},"end":{"row":19,"column":40},"action":"insert","lines":["s"],"id":448}],[{"start":{"row":19,"column":40},"end":{"row":19,"column":41},"action":"insert","lines":[" "],"id":449}],[{"start":{"row":19,"column":41},"end":{"row":19,"column":42},"action":"insert","lines":["c"],"id":450}],[{"start":{"row":19,"column":42},"end":{"row":19,"column":43},"action":"insert","lines":["r"],"id":451},{"start":{"row":19,"column":43},"end":{"row":19,"column":44},"action":"insert","lines":["e"]}],[{"start":{"row":19,"column":44},"end":{"row":19,"column":45},"action":"insert","lines":["a"],"id":452}],[{"start":{"row":19,"column":45},"end":{"row":19,"column":46},"action":"insert","lines":["t"],"id":453}],[{"start":{"row":19,"column":46},"end":{"row":19,"column":47},"action":"insert","lines":["e"],"id":454}],[{"start":{"row":19,"column":47},"end":{"row":19,"column":48},"action":"insert","lines":["d"],"id":455}],[{"start":{"row":19,"column":48},"end":{"row":19,"column":49},"action":"insert","lines":[" "],"id":456}],[{"start":{"row":19,"column":49},"end":{"row":19,"column":50},"action":"insert","lines":["s"],"id":457}],[{"start":{"row":19,"column":50},"end":{"row":19,"column":51},"action":"insert","lines":["u"],"id":458}],[{"start":{"row":19,"column":51},"end":{"row":19,"column":52},"action":"insert","lines":["c"],"id":459}],[{"start":{"row":19,"column":52},"end":{"row":19,"column":53},"action":"insert","lines":["c"],"id":460}],[{"start":{"row":19,"column":53},"end":{"row":19,"column":54},"action":"insert","lines":["e"],"id":461}],[{"start":{"row":19,"column":54},"end":{"row":19,"column":55},"action":"insert","lines":["s"],"id":462}],[{"start":{"row":19,"column":55},"end":{"row":19,"column":56},"action":"insert","lines":["s"],"id":463}],[{"start":{"row":19,"column":56},"end":{"row":19,"column":57},"action":"insert","lines":["f"],"id":464}],[{"start":{"row":19,"column":57},"end":{"row":19,"column":58},"action":"insert","lines":["u"],"id":465}],[{"start":{"row":19,"column":58},"end":{"row":19,"column":59},"action":"insert","lines":["l"],"id":466}],[{"start":{"row":19,"column":59},"end":{"row":19,"column":60},"action":"insert","lines":["l"],"id":467}],[{"start":{"row":19,"column":60},"end":{"row":19,"column":61},"action":"insert","lines":["y"],"id":468}],[{"start":{"row":19,"column":61},"end":{"row":19,"column":62},"action":"insert","lines":["!"],"id":469}],[{"start":{"row":20,"column":0},"end":{"row":20,"column":1},"action":"insert","lines":[" "],"id":470},{"start":{"row":20,"column":1},"end":{"row":20,"column":2},"action":"insert","lines":[" "]}],[{"start":{"row":20,"column":2},"end":{"row":20,"column":3},"action":"insert","lines":[" "],"id":471}],[{"start":{"row":20,"column":3},"end":{"row":20,"column":4},"action":"insert","lines":[" "],"id":472}],[{"start":{"row":20,"column":4},"end":{"row":20,"column":5},"action":"insert","lines":[" "],"id":473}],[{"start":{"row":20,"column":5},"end":{"row":20,"column":6},"action":"insert","lines":[" "],"id":474}],[{"start":{"row":20,"column":6},"end":{"row":20,"column":7},"action":"insert","lines":[" "],"id":475}],[{"start":{"row":20,"column":6},"end":{"row":20,"column":7},"action":"insert","lines":["r"],"id":476}],[{"start":{"row":20,"column":7},"end":{"row":20,"column":8},"action":"insert","lines":["e"],"id":477}],[{"start":{"row":20,"column":8},"end":{"row":20,"column":9},"action":"insert","lines":["d"],"id":478}],[{"start":{"row":20,"column":9},"end":{"row":20,"column":10},"action":"insert","lines":["i"],"id":479}],[{"start":{"row":20,"column":10},"end":{"row":20,"column":11},"action":"insert","lines":["r"],"id":480}],[{"start":{"row":20,"column":11},"end":{"row":20,"column":12},"action":"insert","lines":["e"],"id":481}],[{"start":{"row":20,"column":12},"end":{"row":20,"column":13},"action":"insert","lines":["c"],"id":482}],[{"start":{"row":20,"column":13},"end":{"row":20,"column":14},"action":"insert","lines":["t"],"id":483}],[{"start":{"row":20,"column":14},"end":{"row":20,"column":15},"action":"insert","lines":["_"],"id":484}],[{"start":{"row":20,"column":15},"end":{"row":20,"column":16},"action":"insert","lines":["t"],"id":485}],[{"start":{"row":20,"column":16},"end":{"row":20,"column":17},"action":"insert","lines":["o"],"id":486}],[{"start":{"row":20,"column":17},"end":{"row":20,"column":18},"action":"insert","lines":[" "],"id":487}],[{"start":{"row":20,"column":18},"end":{"row":20,"column":19},"action":"insert","lines":["r"],"id":488}],[{"start":{"row":20,"column":19},"end":{"row":20,"column":20},"action":"insert","lines":["e"],"id":489}],[{"start":{"row":20,"column":20},"end":{"row":20,"column":21},"action":"insert","lines":["c"],"id":490}],[{"start":{"row":20,"column":21},"end":{"row":20,"column":22},"action":"insert","lines":["i"],"id":491}],[{"start":{"row":20,"column":22},"end":{"row":20,"column":23},"action":"insert","lines":["p"],"id":492}],[{"start":{"row":20,"column":23},"end":{"row":20,"column":24},"action":"insert","lines":["e"],"id":493}],[{"start":{"row":20,"column":24},"end":{"row":20,"column":25},"action":"insert","lines":["s"],"id":494}],[{"start":{"row":20,"column":18},"end":{"row":20,"column":25},"action":"remove","lines":["recipes"],"id":495},{"start":{"row":20,"column":18},"end":{"row":20,"column":30},"action":"insert","lines":["recipes_path"]}],[{"start":{"row":20,"column":30},"end":{"row":20,"column":31},"action":"remove","lines":[" "],"id":496}],[{"start":{"row":23,"column":2},"end":{"row":23,"column":3},"action":"insert","lines":[" "],"id":497}],[{"start":{"row":23,"column":3},"end":{"row":23,"column":4},"action":"insert","lines":[" "],"id":498}],[{"start":{"row":29,"column":42},"end":{"row":29,"column":43},"action":"insert","lines":[" "],"id":499}],[{"start":{"row":29,"column":43},"end":{"row":29,"column":44},"action":"insert","lines":[":"],"id":500}],[{"start":{"row":29,"column":44},"end":{"row":29,"column":45},"action":"insert","lines":["s"],"id":501}],[{"start":{"row":29,"column":45},"end":{"row":29,"column":46},"action":"insert","lines":["u"],"id":502}],[{"start":{"row":29,"column":44},"end":{"row":29,"column":46},"action":"remove","lines":["su"],"id":503},{"start":{"row":29,"column":44},"end":{"row":29,"column":51},"action":"insert","lines":["summary"]}],[{"start":{"row":29,"column":51},"end":{"row":29,"column":52},"action":"insert","lines":[","],"id":504}],[{"start":{"row":29,"column":52},"end":{"row":29,"column":53},"action":"insert","lines":[" "],"id":505}],[{"start":{"row":29,"column":53},"end":{"row":29,"column":54},"action":"insert","lines":[":"],"id":506}],[{"start":{"row":29,"column":54},"end":{"row":29,"column":55},"action":"insert","lines":["d"],"id":507},{"start":{"row":29,"column":55},"end":{"row":29,"column":56},"action":"insert","lines":["e"]}],[{"start":{"row":29,"column":56},"end":{"row":29,"column":57},"action":"insert","lines":["s"],"id":508}],[{"start":{"row":29,"column":54},"end":{"row":29,"column":57},"action":"remove","lines":["des"],"id":509},{"start":{"row":29,"column":54},"end":{"row":29,"column":65},"action":"insert","lines":["description"]}],[{"start":{"row":24,"column":0},"end":{"row":24,"column":1},"action":"insert","lines":[" "],"id":510},{"start":{"row":24,"column":1},"end":{"row":24,"column":2},"action":"insert","lines":[" "]}],[{"start":{"row":24,"column":5},"end":{"row":25,"column":0},"action":"insert","lines":["",""],"id":511},{"start":{"row":25,"column":0},"end":{"row":25,"column":2},"action":"insert","lines":["  "]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":25,"column":2},"end":{"row":25,"column":2},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1458916617832}