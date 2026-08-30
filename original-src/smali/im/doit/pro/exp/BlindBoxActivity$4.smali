.class Lim/doit/pro/exp/BlindBoxActivity$4;
.super Ljava/lang/Object;
.source "BlindBoxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/exp/BlindBoxActivity;->draw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/exp/BlindBoxActivity;

.field final synthetic val$n:I


# direct methods
.method constructor <init>(Lim/doit/pro/exp/BlindBoxActivity;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lim/doit/pro/exp/BlindBoxActivity$4;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    iput p2, p0, Lim/doit/pro/exp/BlindBoxActivity$4;->val$n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 211
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity$4;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-static {v0}, Lim/doit/pro/exp/BlindBoxActivity;->access$600(Lim/doit/pro/exp/BlindBoxActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/exp/BlindBoxActivity$4;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-static {v1}, Lim/doit/pro/exp/BlindBoxActivity;->access$900(Lim/doit/pro/exp/BlindBoxActivity;)Ljava/util/Random;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/exp/BlindBoxActivity$4;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-static {v2}, Lim/doit/pro/exp/BlindBoxActivity;->access$600(Lim/doit/pro/exp/BlindBoxActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/exp/BlindBoxActivity$Pick;

    .line 212
    iget-object v1, p0, Lim/doit/pro/exp/BlindBoxActivity$4;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-static {v1}, Lim/doit/pro/exp/BlindBoxActivity;->access$700(Lim/doit/pro/exp/BlindBoxActivity;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u300c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/exp/BlindBoxActivity$4;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    iget-object v0, v0, Lim/doit/pro/exp/BlindBoxActivity$Pick;->title:Ljava/lang/String;

    invoke-static {v3, v0}, Lim/doit/pro/exp/BlindBoxActivity;->access$1000(Lim/doit/pro/exp/BlindBoxActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u300d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget v0, p0, Lim/doit/pro/exp/BlindBoxActivity$4;->val$n:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_73

    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity$4;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-static {v0}, Lim/doit/pro/exp/BlindBoxActivity;->access$600(Lim/doit/pro/exp/BlindBoxActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/exp/BlindBoxActivity$4;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-static {v2}, Lim/doit/pro/exp/BlindBoxActivity;->access$900(Lim/doit/pro/exp/BlindBoxActivity;)Ljava/util/Random;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/exp/BlindBoxActivity$4;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-static {v3}, Lim/doit/pro/exp/BlindBoxActivity;->access$600(Lim/doit/pro/exp/BlindBoxActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/exp/BlindBoxActivity$Pick;

    invoke-static {v0, v1}, Lim/doit/pro/exp/BlindBoxActivity;->access$1100(Lim/doit/pro/exp/BlindBoxActivity;Lim/doit/pro/exp/BlindBoxActivity$Pick;)V

    .line 214
    :cond_73
    return-void
.end method
