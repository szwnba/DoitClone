.class Lim/doit/pro/stat/StatisticsActivity$2;
.super Ljava/lang/Object;
.source "StatisticsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/stat/StatisticsActivity;->loadAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/stat/StatisticsActivity;

.field final synthetic val$m:Ljava/lang/String;

.field final synthetic val$self:Lim/doit/pro/stat/StatisticsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/stat/StatisticsActivity;Ljava/lang/String;Lim/doit/pro/stat/StatisticsActivity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lim/doit/pro/stat/StatisticsActivity$2;->this$0:Lim/doit/pro/stat/StatisticsActivity;

    iput-object p2, p0, Lim/doit/pro/stat/StatisticsActivity$2;->val$m:Ljava/lang/String;

    iput-object p3, p0, Lim/doit/pro/stat/StatisticsActivity$2;->val$self:Lim/doit/pro/stat/StatisticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 125
    nop

    .line 126
    :try_start_1
    iget-object v0, p0, Lim/doit/pro/stat/StatisticsActivity$2;->this$0:Lim/doit/pro/stat/StatisticsActivity;

    iget-object v1, p0, Lim/doit/pro/stat/StatisticsActivity$2;->val$m:Ljava/lang/String;

    invoke-static {v0, v1}, Lim/doit/pro/stat/StatisticsActivity;->access$200(Lim/doit/pro/stat/StatisticsActivity;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception v0

    const/4 v0, 0x0

    .line 127
    :goto_c
    nop

    .line 128
    iget-object v1, p0, Lim/doit/pro/stat/StatisticsActivity$2;->this$0:Lim/doit/pro/stat/StatisticsActivity;

    invoke-static {v1}, Lim/doit/pro/stat/StatisticsActivity;->access$600(Lim/doit/pro/stat/StatisticsActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lim/doit/pro/stat/StatisticsActivity$2$1;

    invoke-direct {v2, p0, v0}, Lim/doit/pro/stat/StatisticsActivity$2$1;-><init>(Lim/doit/pro/stat/StatisticsActivity$2;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method
