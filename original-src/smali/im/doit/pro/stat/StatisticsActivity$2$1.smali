.class Lim/doit/pro/stat/StatisticsActivity$2$1;
.super Ljava/lang/Object;
.source "StatisticsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/stat/StatisticsActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/stat/StatisticsActivity$2;

.field final synthetic val$r:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lim/doit/pro/stat/StatisticsActivity$2;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lim/doit/pro/stat/StatisticsActivity$2$1;->this$1:Lim/doit/pro/stat/StatisticsActivity$2;

    iput-object p2, p0, Lim/doit/pro/stat/StatisticsActivity$2$1;->val$r:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 130
    iget-object v0, p0, Lim/doit/pro/stat/StatisticsActivity$2$1;->this$1:Lim/doit/pro/stat/StatisticsActivity$2;

    iget-object v0, v0, Lim/doit/pro/stat/StatisticsActivity$2;->val$self:Lim/doit/pro/stat/StatisticsActivity;

    invoke-virtual {v0}, Lim/doit/pro/stat/StatisticsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lim/doit/pro/stat/StatisticsActivity$2$1;->this$1:Lim/doit/pro/stat/StatisticsActivity$2;

    iget-object v0, v0, Lim/doit/pro/stat/StatisticsActivity$2;->val$m:Ljava/lang/String;

    iget-object v1, p0, Lim/doit/pro/stat/StatisticsActivity$2$1;->this$1:Lim/doit/pro/stat/StatisticsActivity$2;

    iget-object v1, v1, Lim/doit/pro/stat/StatisticsActivity$2;->this$0:Lim/doit/pro/stat/StatisticsActivity;

    invoke-static {v1}, Lim/doit/pro/stat/StatisticsActivity;->access$000(Lim/doit/pro/stat/StatisticsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_45

    .line 131
    :cond_1d
    iget-object v0, p0, Lim/doit/pro/stat/StatisticsActivity$2$1;->val$r:[Ljava/lang/Object;

    if-nez v0, :cond_37

    iget-object v0, p0, Lim/doit/pro/stat/StatisticsActivity$2$1;->this$1:Lim/doit/pro/stat/StatisticsActivity$2;

    iget-object v0, v0, Lim/doit/pro/stat/StatisticsActivity$2;->this$0:Lim/doit/pro/stat/StatisticsActivity;

    invoke-static {v0}, Lim/doit/pro/stat/StatisticsActivity;->access$400(Lim/doit/pro/stat/StatisticsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/stat/StatisticsActivity$2$1;->this$1:Lim/doit/pro/stat/StatisticsActivity$2;

    iget-object v1, v1, Lim/doit/pro/stat/StatisticsActivity$2;->this$0:Lim/doit/pro/stat/StatisticsActivity;

    const-string v2, "\u6570\u636e\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v1, v2}, Lim/doit/pro/stat/StatisticsActivity;->access$300(Lim/doit/pro/stat/StatisticsActivity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 132
    :cond_37
    iget-object v0, p0, Lim/doit/pro/stat/StatisticsActivity$2$1;->this$1:Lim/doit/pro/stat/StatisticsActivity$2;

    iget-object v0, v0, Lim/doit/pro/stat/StatisticsActivity$2;->this$0:Lim/doit/pro/stat/StatisticsActivity;

    iget-object v1, p0, Lim/doit/pro/stat/StatisticsActivity$2$1;->this$1:Lim/doit/pro/stat/StatisticsActivity$2;

    iget-object v1, v1, Lim/doit/pro/stat/StatisticsActivity$2;->val$m:Ljava/lang/String;

    iget-object v2, p0, Lim/doit/pro/stat/StatisticsActivity$2$1;->val$r:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lim/doit/pro/stat/StatisticsActivity;->access$500(Lim/doit/pro/stat/StatisticsActivity;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    return-void

    .line 130
    :cond_45
    :goto_45
    return-void
.end method
