#' The BODE Index in COPD
#'
#' @param FEV1 A number for forced expiratory volume in one second (FEV1) expressed as percentage
#' @param mMRC A number for the dyspnea scale of modified Medical Research Council (mMRC)
#' @param BMI A number for Body Mass Index
#' @param walk A number for distance walked in 6 minutes (in meter)
#'
#' @examples
#' bode (FEV1 = 40, mMRC = 3, BMI = 22, walk = 100)
#' bode (FEV1 = 60, mMRC = 1, BMI = 19, walk = 200)
#'
#' @source \url{https://www.ncbi.nlm.nih.gov/pubmed/14999112}

bode <-  function (FEV1, mMRC, BMI, walk) {



    if (FEV1 >= 65) {
      FEV1_score = 0
    } else if (FEV1 >= 50 & FEV1 < 65) {
      FEV1_score = 1
    } else if (FEV1 >= 36 & FEV1 < 50) {
      FEV1_score = 2
    } else if (FEV1 <= 35) {
      FEV1_score = 3
    }

    if (mMRC >= 0 & mMRC < 2) {
      MRC_score = 0
    } else if (mMRC == 2) {
      MRC_score = 1
    } else if (mMRC == 3) {
      MRC_score = 2
    } else if (mMRC == 4) {
      MRC_score = 3
    }

    if (BMI > 21) {
      BMI_score = 0
    } else if (BMI <= 21) {
      BMI_score = 1
    }



  if (walk >= 350) {
    walk_score = 0
  } else if (walk >= 250 & walk < 350){
    walk_score = 1
  } else if (walk >= 150 & walk < 250){
    walk_score = 2
  } else if (walk < 150) {
    walk_score = 3
  }

    BODE_score <- c (FEV1_score, MRC_score, BMI_score, walk_score)
    results <- list()
    results$BODE_score <- sum (BODE_score)

    return (results)

  }
