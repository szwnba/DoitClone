.class public Lim/doit/pro/activity/DailyReviewChartFragment;
.super Landroid/support/v4/app/Fragment;
.source "DailyReviewChartFragment.java"


# instance fields
.field private final DIR_NAME:Ljava/lang/String;

.field private barChartView:Lim/doit/pro/ui/component/chart/BarChart;

.field private mAverageEstimatedTime:F

.field private mAverageSpentTime:F

.field private mChartWrap:Landroid/widget/LinearLayout;

.field private mCompletedCount:I

.field private mDeferredCount:I

.field private mEmptyMsgView:Lim/doit/pro/ui/component/ListViewEmptyView;

.field private mMaxEstimatedTime:F

.field private mMaxSpentTime:F

.field private mShareBtn:Landroid/widget/Button;

.field private mTotalCount:F

.field private mTotalEstimatedTime:F

.field private mTotalSpentTime:F

.field private mUncompletedCount:I

.field private onShareClick:Landroid/view/View$OnClickListener;

.field private ringPieChartView:Lim/doit/pro/ui/component/chart/RingPieChart;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    const-string v0, "doit"

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->DIR_NAME:Ljava/lang/String;

    .line 259
    new-instance v0, Lim/doit/pro/activity/DailyReviewChartFragment$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyReviewChartFragment$1;-><init>(Lim/doit/pro/activity/DailyReviewChartFragment;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->onShareClick:Landroid/view/View$OnClickListener;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/DailyReviewChartFragment;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewChartFragment;->createShareTopbar()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/DailyReviewChartFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mChartWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/DailyReviewChartFragment;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewChartFragment;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/DailyReviewChartFragment;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 340
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewChartFragment;->createShareLogoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/DailyReviewChartFragment;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 359
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/activity/DailyReviewChartFragment;->joinBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/DailyReviewChartFragment;Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewChartFragment;->saveBitmapToFile(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static buildArgs(Lim/doit/pro/model/DailyReview;)Landroid/os/Bundle;
    .locals 16
    .param p0, "mDailyReview"    # Lim/doit/pro/model/DailyReview;

    .prologue
    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "args":Landroid/os/Bundle;
    const/4 v7, 0x0

    .local v7, "estimatedTimeTotal":F
    const/4 v12, 0x0

    .line 64
    .local v12, "spentTimeTotal":F
    const/4 v6, 0x0

    .local v6, "estimatedTimeMax":F
    const/4 v11, 0x0

    .line 65
    .local v11, "spentTimeMax":F
    const/4 v5, 0x0

    .local v5, "estimatedTimeAvg":F
    const/4 v10, 0x0

    .line 66
    .local v10, "spentTimeAvg":F
    const/4 v2, 0x0

    .local v2, "completedCount":I
    const/4 v13, 0x0

    .local v13, "uncompletedCount":I
    const/4 v3, 0x0

    .line 67
    .local v3, "deferredCount":I
    const/4 v1, 0x0

    .line 68
    .local v1, "bothEstimatedAndSpentTimeCount":I
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/model/DailyReview;->getTaskReviewInfos()Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 69
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/model/DailyReview;->getTaskReviewInfos()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_2

    .line 88
    if-lez v1, :cond_1

    .line 90
    int-to-float v14, v1

    .line 89
    div-float v5, v7, v14

    .line 91
    int-to-float v14, v1

    div-float v10, v12, v14

    .line 94
    :cond_1
    const-string v14, "completed_count"

    invoke-virtual {v0, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string v14, "uncompleted_count"

    invoke-virtual {v0, v14, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string v14, "deferred_count"

    invoke-virtual {v0, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v14, "total_estimated_time"

    invoke-virtual {v0, v14, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 98
    const-string v14, "max_estimated_time"

    invoke-virtual {v0, v14, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 99
    const-string v14, "average_estimated_time"

    invoke-virtual {v0, v14, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 100
    const-string v14, "total_spent_time"

    invoke-virtual {v0, v14, v12}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 101
    const-string v14, "max_spent_time"

    invoke-virtual {v0, v14, v11}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 102
    const-string v14, "average_spent_time"

    invoke-virtual {v0, v14, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 103
    return-object v0

    .line 69
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lim/doit/pro/model/TaskReviewInfo;

    .line 70
    .local v8, "item":Lim/doit/pro/model/TaskReviewInfo;
    invoke-virtual {v8}, Lim/doit/pro/model/TaskReviewInfo;->isCompleted()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 77
    :cond_3
    :goto_1
    invoke-virtual {v8}, Lim/doit/pro/model/TaskReviewInfo;->getEstimatedTime()I

    move-result v15

    int-to-float v4, v15

    .line 78
    .local v4, "estimatedTime":F
    invoke-virtual {v8}, Lim/doit/pro/model/TaskReviewInfo;->getSpentTime()I

    move-result v15

    int-to-float v9, v15

    .line 79
    .local v9, "spentTime":F
    invoke-virtual {v8}, Lim/doit/pro/model/TaskReviewInfo;->isCompleted()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 82
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 83
    add-float/2addr v7, v4

    .line 84
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 85
    add-float/2addr v12, v9

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v4    # "estimatedTime":F
    .end local v9    # "spentTime":F
    :cond_4
    invoke-virtual {v8}, Lim/doit/pro/model/TaskReviewInfo;->isDeferred()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Lim/doit/pro/model/TaskReviewInfo;->isUncompleted()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 75
    add-int/lit8 v13, v13, 0x1

    goto :goto_1
.end method

.method private createBitmap(II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "layoutId"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 346
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyReviewChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 347
    const/4 v4, 0x0

    .line 346
    invoke-virtual {v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 348
    .local v2, "rootView":Landroid/view/View;
    iget-object v3, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mChartWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    .line 349
    const/high16 v4, 0x40000000    # 2.0f

    .line 348
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/view/View;->measure(II)V

    .line 350
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 351
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 350
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 352
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 353
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 352
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 354
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 355
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 356
    return-object v0
.end method

.method private createDirIfNotExists(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 315
    const/4 v1, 0x1

    .line 317
    .local v1, "success":Z
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 318
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    const/4 v1, 0x0

    .line 323
    :cond_0
    if-eqz v1, :cond_1

    .line 326
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createShareLogoBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    const v0, 0x7f03009b

    .line 342
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 341
    invoke-direct {p0, v0, v1}, Lim/doit/pro/activity/DailyReviewChartFragment;->createBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private createShareTopbar()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 334
    const v0, 0x7f03009c

    .line 336
    const v1, 0x7f09002f

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v1

    float-to-int v1, v1

    .line 337
    const/high16 v2, 0x40000000    # 2.0f

    .line 335
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 334
    invoke-direct {p0, v0, v1}, Lim/doit/pro/activity/DailyReviewChartFragment;->createBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private deleteHistoryFiles(Ljava/io/File;)V
    .locals 3
    .param p1, "root"    # Ljava/io/File;

    .prologue
    .line 304
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 306
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 312
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 307
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v1    # "i":I
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    .line 308
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 306
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private drawBarChart()V
    .locals 11

    .prologue
    .line 174
    const v2, 0x7f0800a7

    .line 175
    .local v2, "estimatedColor":I
    const v3, 0x7f0800a6

    .line 176
    .local v3, "estimatedTextColor":I
    const v10, 0x7f0800a9

    .line 178
    .local v10, "spentColor":I
    const v0, 0x7f09008d

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v4

    .line 179
    .local v4, "barStrokeWidth":F
    const v5, 0x7f0800a8

    .line 181
    .local v5, "estimatedStrokeColor":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v8, "barChartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/chart/BarChartItem;>;"
    new-instance v7, Lim/doit/pro/ui/component/chart/BarChartItem;

    const v0, 0x7f0c020a

    invoke-direct {v7, v0}, Lim/doit/pro/ui/component/chart/BarChartItem;-><init>(I)V

    .line 186
    .local v7, "barChartItem":Lim/doit/pro/ui/component/chart/BarChartItem;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v9, "barItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/chart/BarItem;>;"
    new-instance v0, Lim/doit/pro/ui/component/chart/BarItem;

    iget v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mTotalEstimatedTime:F

    .line 188
    invoke-direct/range {v0 .. v5}, Lim/doit/pro/ui/component/chart/BarItem;-><init>(FIIFI)V

    .line 187
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lim/doit/pro/ui/component/chart/BarItem;

    iget v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mTotalSpentTime:F

    invoke-direct {v0, v1, v10, v10}, Lim/doit/pro/ui/component/chart/BarItem;-><init>(FII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v7, v9}, Lim/doit/pro/ui/component/chart/BarChartItem;->setItems(Ljava/util/ArrayList;)V

    .line 191
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v7, Lim/doit/pro/ui/component/chart/BarChartItem;

    .end local v7    # "barChartItem":Lim/doit/pro/ui/component/chart/BarChartItem;
    const v0, 0x7f0c020b

    invoke-direct {v7, v0}, Lim/doit/pro/ui/component/chart/BarChartItem;-><init>(I)V

    .line 194
    .restart local v7    # "barChartItem":Lim/doit/pro/ui/component/chart/BarChartItem;
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "barItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/chart/BarItem;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .restart local v9    # "barItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/chart/BarItem;>;"
    new-instance v0, Lim/doit/pro/ui/component/chart/BarItem;

    iget v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mMaxEstimatedTime:F

    .line 196
    invoke-direct/range {v0 .. v5}, Lim/doit/pro/ui/component/chart/BarItem;-><init>(FIIFI)V

    .line 195
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Lim/doit/pro/ui/component/chart/BarItem;

    iget v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mMaxSpentTime:F

    invoke-direct {v0, v1, v10, v10}, Lim/doit/pro/ui/component/chart/BarItem;-><init>(FII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v7, v9}, Lim/doit/pro/ui/component/chart/BarChartItem;->setItems(Ljava/util/ArrayList;)V

    .line 199
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v7, Lim/doit/pro/ui/component/chart/BarChartItem;

    .end local v7    # "barChartItem":Lim/doit/pro/ui/component/chart/BarChartItem;
    const v0, 0x7f0c020c

    invoke-direct {v7, v0}, Lim/doit/pro/ui/component/chart/BarChartItem;-><init>(I)V

    .line 202
    .restart local v7    # "barChartItem":Lim/doit/pro/ui/component/chart/BarChartItem;
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "barItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/chart/BarItem;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .restart local v9    # "barItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/chart/BarItem;>;"
    new-instance v0, Lim/doit/pro/ui/component/chart/BarItem;

    iget v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mAverageEstimatedTime:F

    .line 204
    invoke-direct/range {v0 .. v5}, Lim/doit/pro/ui/component/chart/BarItem;-><init>(FIIFI)V

    .line 203
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lim/doit/pro/ui/component/chart/BarItem;

    iget v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mAverageSpentTime:F

    invoke-direct {v0, v1, v10, v10}, Lim/doit/pro/ui/component/chart/BarItem;-><init>(FII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v7, v9}, Lim/doit/pro/ui/component/chart/BarChartItem;->setItems(Ljava/util/ArrayList;)V

    .line 207
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v6, "barChartDescItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/chart/BarChartDescItem;>;"
    new-instance v0, Lim/doit/pro/ui/component/chart/BarChartDescItem;

    const v1, 0x7f0c020d

    .line 211
    invoke-direct {v0, v1, v2, v5, v4}, Lim/doit/pro/ui/component/chart/BarChartDescItem;-><init>(IIIF)V

    .line 210
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v0, Lim/doit/pro/ui/component/chart/BarChartDescItem;

    const v1, 0x7f0c020e

    invoke-direct {v0, v1, v10}, Lim/doit/pro/ui/component/chart/BarChartDescItem;-><init>(II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->barChartView:Lim/doit/pro/ui/component/chart/BarChart;

    invoke-virtual {v0, v8}, Lim/doit/pro/ui/component/chart/BarChart;->setBars(Ljava/util/ArrayList;)V

    .line 215
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->barChartView:Lim/doit/pro/ui/component/chart/BarChart;

    invoke-virtual {v0, v6}, Lim/doit/pro/ui/component/chart/BarChart;->setBarDescs(Ljava/util/ArrayList;)V

    .line 216
    return-void
.end method

.method private drawRingPieChart()V
    .locals 8

    .prologue
    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/chart/RingPieChartItem;>;"
    const/4 v4, 0x0

    .line 222
    .local v4, "temp":F
    iget v6, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mCompletedCount:I

    int-to-float v6, v6

    iget v7, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mTotalCount:F

    invoke-direct {p0, v6, v7}, Lim/doit/pro/activity/DailyReviewChartFragment;->getRingChartPercentage(FF)F

    move-result v3

    .line 223
    .local v3, "percentage":F
    add-float/2addr v4, v3

    .line 224
    new-instance v0, Lim/doit/pro/ui/component/chart/RingPieChartItem;

    const v6, 0x7f0c0053

    .line 225
    const v7, 0x7f0800aa

    .line 224
    invoke-direct {v0, v6, v3, v7}, Lim/doit/pro/ui/component/chart/RingPieChartItem;-><init>(IFI)V

    .line 226
    .local v0, "completed":Lim/doit/pro/ui/component/chart/RingPieChartItem;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget v6, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mUncompletedCount:I

    int-to-float v6, v6

    iget v7, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mTotalCount:F

    invoke-direct {p0, v6, v7}, Lim/doit/pro/activity/DailyReviewChartFragment;->getRingChartPercentage(FF)F

    move-result v3

    .line 229
    add-float/2addr v4, v3

    .line 230
    new-instance v5, Lim/doit/pro/ui/component/chart/RingPieChartItem;

    .line 231
    const v6, 0x7f0c017b

    .line 232
    const v7, 0x7f0800ab

    .line 230
    invoke-direct {v5, v6, v3, v7}, Lim/doit/pro/ui/component/chart/RingPieChartItem;-><init>(IFI)V

    .line 233
    .local v5, "uncompleted":Lim/doit/pro/ui/component/chart/RingPieChartItem;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v4

    .line 236
    new-instance v2, Lim/doit/pro/ui/component/chart/RingPieChartItem;

    const v6, 0x7f0c0056

    .line 237
    const v7, 0x7f0800ac

    .line 236
    invoke-direct {v2, v6, v3, v7}, Lim/doit/pro/ui/component/chart/RingPieChartItem;-><init>(IFI)V

    .line 238
    .local v2, "deferred":Lim/doit/pro/ui/component/chart/RingPieChartItem;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v6, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->ringPieChartView:Lim/doit/pro/ui/component/chart/RingPieChart;

    invoke-virtual {v6, v1}, Lim/doit/pro/ui/component/chart/RingPieChart;->setDatas(Ljava/util/ArrayList;)V

    .line 241
    return-void
.end method

.method private getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 330
    invoke-static {p1}, Lim/doit/pro/activity/utils/ViewUtils;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getRingChartPercentage(FF)F
    .locals 3
    .param p1, "item"    # F
    .param p2, "total"    # F

    .prologue
    const/4 v1, 0x0

    .line 244
    cmpl-float v2, p1, v1

    if-eqz v2, :cond_0

    cmpl-float v2, p2, v1

    if-nez v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    div-float v0, p1, p2

    .line 248
    .local v0, "percentage":F
    const/4 v1, 0x3

    invoke-static {v1, v0}, Lim/doit/pro/utils/NumberUtils;->setScale(IF)F

    move-result v1

    goto :goto_0
.end method

.method private init(Landroid/view/View;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 116
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewChartFragment;->initData()V

    .line 117
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewChartFragment;->initView(Landroid/view/View;)V

    .line 118
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewChartFragment;->initViewContent()V

    .line 119
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewChartFragment;->initListener()V

    .line 120
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x42700000    # 60.0f

    const/4 v3, 0x0

    .line 123
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyReviewChartFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "completed_count"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mCompletedCount:I

    .line 125
    const-string v1, "uncompleted_count"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mUncompletedCount:I

    .line 126
    const-string v1, "deferred_count"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mDeferredCount:I

    .line 127
    iget v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mCompletedCount:I

    iget v2, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mUncompletedCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mDeferredCount:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mTotalCount:F

    .line 129
    const-string v1, "max_estimated_time"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    div-float/2addr v1, v4

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mMaxEstimatedTime:F

    .line 130
    iget v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mMaxEstimatedTime:F

    invoke-direct {p0, v1}, Lim/doit/pro/activity/DailyReviewChartFragment;->setTimeScale(F)F

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mMaxEstimatedTime:F

    .line 131
    const-string v1, "total_estimated_time"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    div-float/2addr v1, v4

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mTotalEstimatedTime:F

    .line 132
    iget v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mTotalEstimatedTime:F

    invoke-direct {p0, v1}, Lim/doit/pro/activity/DailyReviewChartFragment;->setTimeScale(F)F

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mTotalEstimatedTime:F

    .line 133
    const-string v1, "max_spent_time"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    div-float/2addr v1, v4

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mMaxSpentTime:F

    .line 134
    iget v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mMaxSpentTime:F

    invoke-direct {p0, v1}, Lim/doit/pro/activity/DailyReviewChartFragment;->setTimeScale(F)F

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mMaxSpentTime:F

    .line 135
    const-string v1, "total_spent_time"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    div-float/2addr v1, v4

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mTotalSpentTime:F

    .line 136
    iget v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mTotalSpentTime:F

    invoke-direct {p0, v1}, Lim/doit/pro/activity/DailyReviewChartFragment;->setTimeScale(F)F

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mTotalSpentTime:F

    .line 137
    const-string v1, "average_estimated_time"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    div-float/2addr v1, v4

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mAverageEstimatedTime:F

    .line 138
    iget v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mAverageEstimatedTime:F

    invoke-direct {p0, v1}, Lim/doit/pro/activity/DailyReviewChartFragment;->setTimeScale(F)F

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mAverageEstimatedTime:F

    .line 139
    const-string v1, "average_spent_time"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    div-float/2addr v1, v4

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mAverageSpentTime:F

    .line 140
    iget v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mAverageSpentTime:F

    invoke-direct {p0, v1}, Lim/doit/pro/activity/DailyReviewChartFragment;->setTimeScale(F)F

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mAverageSpentTime:F

    .line 141
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mShareBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->onShareClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 144
    const v0, 0x7f0b0080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mChartWrap:Landroid/widget/LinearLayout;

    .line 145
    const v0, 0x7f0b0083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/chart/BarChart;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->barChartView:Lim/doit/pro/ui/component/chart/BarChart;

    .line 147
    const v0, 0x7f0b0081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/chart/RingPieChart;

    .line 146
    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->ringPieChartView:Lim/doit/pro/ui/component/chart/RingPieChart;

    .line 148
    const v0, 0x7f0b0084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mShareBtn:Landroid/widget/Button;

    .line 149
    const v0, 0x7f0b006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/ListViewEmptyView;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mEmptyMsgView:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 150
    return-void
.end method

.method private initViewContent()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 153
    iget v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mTotalCount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mShareBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mChartWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewChartFragment;->drawRingPieChart()V

    .line 157
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewChartFragment;->drawBarChart()V

    .line 165
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mShareBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mChartWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mEmptyMsgView:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 162
    const v1, 0x7f0c01a0

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setBody(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewChartFragment;->showEmptyView()V

    goto :goto_0
.end method

.method private joinBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "topbarBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "logoBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 362
    .local v7, "topbarWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 363
    .local v6, "topbarHeight":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 364
    .local v1, "bmWidth":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 365
    .local v0, "bmHeight":I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 366
    .local v4, "logoWidth":I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 367
    .local v3, "logoHeight":I
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 368
    .local v8, "width":I
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 369
    add-int v9, v6, v0

    .line 370
    add-int/2addr v9, v3

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 369
    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 371
    .local v5, "newmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 372
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v9, -0x1

    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 373
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, p1, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 374
    const/4 v9, 0x0

    int-to-float v10, v6

    const/4 v11, 0x0

    invoke-virtual {v2, p2, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 375
    const/4 v9, 0x0

    add-int v10, v6, v0

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v2, p3, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 376
    const/16 v9, 0x1f

    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->save(I)I

    .line 377
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 378
    return-object v5
.end method

.method public static newInstance(Lim/doit/pro/model/DailyReview;)Lim/doit/pro/activity/DailyReviewChartFragment;
    .locals 2
    .param p0, "dailyReview"    # Lim/doit/pro/model/DailyReview;

    .prologue
    .line 56
    new-instance v0, Lim/doit/pro/activity/DailyReviewChartFragment;

    invoke-direct {v0}, Lim/doit/pro/activity/DailyReviewChartFragment;-><init>()V

    .line 57
    .local v0, "newFragment":Lim/doit/pro/activity/DailyReviewChartFragment;
    invoke-static {p0}, Lim/doit/pro/activity/DailyReviewChartFragment;->buildArgs(Lim/doit/pro/model/DailyReview;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/DailyReviewChartFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v0
.end method

.method private saveBitmapToFile(Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 10
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 280
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "fileName":Ljava/lang/String;
    const-string v6, "doit"

    invoke-direct {p0, v6}, Lim/doit/pro/activity/DailyReviewChartFragment;->createDirIfNotExists(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 283
    .local v5, "root":Ljava/io/File;
    invoke-direct {p0, v5}, Lim/doit/pro/activity/DailyReviewChartFragment;->deleteHistoryFiles(Ljava/io/File;)V

    .line 285
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    const/4 v2, 0x0

    .line 289
    .local v2, "fOut":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .local v3, "fOut":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 293
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 294
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 295
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 300
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "root":Ljava/io/File;
    :goto_1
    return-object v1

    .line 290
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "root":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 297
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "root":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setTimeScale(F)F
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 252
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lim/doit/pro/utils/NumberUtils;->setScale(IF)F

    move-result v0

    return v0
.end method

.method private showEmptyView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 168
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mShareBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mChartWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewChartFragment;->mEmptyMsgView:Lim/doit/pro/ui/component/ListViewEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    .line 171
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    const v1, 0x7f030024

    .line 110
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "root":Landroid/view/View;
    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewChartFragment;->init(Landroid/view/View;)V

    .line 112
    return-object v0
.end method
