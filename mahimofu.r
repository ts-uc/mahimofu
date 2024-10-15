# 互助法を使って最大公約数を求める
gcd <- function(a, b) {
  while(b != 0) {
    temp <- b
    b <- a %% b
    a <- temp
  }
  return(a)
}

# まひもふゲームを実行
mahimofu <- function() {
  max_ans <- 100
  ans <- sample(1:max_ans, 1)

  repeat {
    input_num <- as.integer(readline(prompt = ""))

    if (is.na(input_num) || input_num < 1 || input_num > max_ans) {
      cat("1から", max_ans, "までの値を入力してください！\n")
      next
    }

    if (input_num == ans) {
      cat("まひろもふりすぎてまひもふ!!!!!\n")
      break
    } else {
      cat(paste0(rep("まひ", gcd(input_num, ans)), collapse = ""), "\n")
    }
  }
}

# これより上の部分をコピペし、
# mahimofu() と入力してゲーム開始

if (interactive()) {
  mahimofu()
}