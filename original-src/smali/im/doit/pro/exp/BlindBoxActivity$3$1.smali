.class Lim/doit/pro/exp/BlindBoxActivity$3$1;
.super Ljava/lang/Object;
.source "BlindBoxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/exp/BlindBoxActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/exp/BlindBoxActivity$3;

.field final synthetic val$res:Ljava/util/List;


# direct methods
.method constructor <init>(Lim/doit/pro/exp/BlindBoxActivity$3;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lim/doit/pro/exp/BlindBoxActivity$3$1;->this$1:Lim/doit/pro/exp/BlindBoxActivity$3;

    iput-object p2, p0, Lim/doit/pro/exp/BlindBoxActivity$3$1;->val$res:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 196
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity$3$1;->this$1:Lim/doit/pro/exp/BlindBoxActivity$3;

    iget-object v0, v0, Lim/doit/pro/exp/BlindBoxActivity$3;->val$self:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-virtual {v0}, Lim/doit/pro/exp/BlindBoxActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 197
    :cond_b
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity$3$1;->this$1:Lim/doit/pro/exp/BlindBoxActivity$3;

    iget-object v0, v0, Lim/doit/pro/exp/BlindBoxActivity$3;->val$self:Lim/doit/pro/exp/BlindBoxActivity;

    iget-object v1, p0, Lim/doit/pro/exp/BlindBoxActivity$3$1;->val$res:Ljava/util/List;

    invoke-static {v0, v1}, Lim/doit/pro/exp/BlindBoxActivity;->access$602(Lim/doit/pro/exp/BlindBoxActivity;Ljava/util/List;)Ljava/util/List;

    .line 198
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity$3$1;->this$1:Lim/doit/pro/exp/BlindBoxActivity$3;

    iget-object v0, v0, Lim/doit/pro/exp/BlindBoxActivity$3;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-static {v0}, Lim/doit/pro/exp/BlindBoxActivity;->access$700(Lim/doit/pro/exp/BlindBoxActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/exp/BlindBoxActivity$3$1;->val$res:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_27

    const-string v1, "\u70b9 \u6211 \u62bd \u4e00 \u4e2a"

    goto :goto_29

    :cond_27
    const-string v1, "\u8be5\u6765\u6e90\u6682\u65e0\u4efb\u52a1"

    :goto_29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method
