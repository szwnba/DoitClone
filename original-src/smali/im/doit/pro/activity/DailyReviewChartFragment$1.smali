.class Lim/doit/pro/activity/DailyReviewChartFragment$1;
.super Ljava/lang/Object;
.source "DailyReviewChartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DailyReviewChartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DailyReviewChartFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/DailyReviewChartFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/DailyReviewChartFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewChartFragment;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 263
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewChartFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewChartFragment;

    iget-object v5, p0, Lim/doit/pro/activity/DailyReviewChartFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewChartFragment;

    invoke-static {v5}, Lim/doit/pro/activity/DailyReviewChartFragment;->access$0(Lim/doit/pro/activity/DailyReviewChartFragment;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 264
    iget-object v6, p0, Lim/doit/pro/activity/DailyReviewChartFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewChartFragment;

    iget-object v7, p0, Lim/doit/pro/activity/DailyReviewChartFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewChartFragment;

    invoke-static {v7}, Lim/doit/pro/activity/DailyReviewChartFragment;->access$1(Lim/doit/pro/activity/DailyReviewChartFragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-static {v6, v7}, Lim/doit/pro/activity/DailyReviewChartFragment;->access$2(Lim/doit/pro/activity/DailyReviewChartFragment;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lim/doit/pro/activity/DailyReviewChartFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewChartFragment;

    invoke-static {v7}, Lim/doit/pro/activity/DailyReviewChartFragment;->access$3(Lim/doit/pro/activity/DailyReviewChartFragment;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 263
    invoke-static {v4, v5, v6, v7}, Lim/doit/pro/activity/DailyReviewChartFragment;->access$4(Lim/doit/pro/activity/DailyReviewChartFragment;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 265
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewChartFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewChartFragment;

    invoke-static {v4, v0}, Lim/doit/pro/activity/DailyReviewChartFragment;->access$5(Lim/doit/pro/activity/DailyReviewChartFragment;Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v1

    .line 266
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_0

    .line 267
    const-string v4, "convert image to file failed."

    invoke-static {v4}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 275
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 271
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 274
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewChartFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewChartFragment;

    const-string v5, ""

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/doit/pro/activity/DailyReviewChartFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
