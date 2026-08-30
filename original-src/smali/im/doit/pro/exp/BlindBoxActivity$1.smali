.class Lim/doit/pro/exp/BlindBoxActivity$1;
.super Ljava/lang/Object;
.source "BlindBoxActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/exp/BlindBoxActivity;->buildUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/exp/BlindBoxActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/exp/BlindBoxActivity;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lim/doit/pro/exp/BlindBoxActivity$1;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 90
    iget-object p1, p0, Lim/doit/pro/exp/BlindBoxActivity$1;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-static {p1}, Lim/doit/pro/exp/BlindBoxActivity;->access$000(Lim/doit/pro/exp/BlindBoxActivity;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lim/doit/pro/exp/BlindBoxActivity;->access$100()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    invoke-static {p1, v0}, Lim/doit/pro/exp/BlindBoxActivity;->access$002(Lim/doit/pro/exp/BlindBoxActivity;I)I

    .line 91
    iget-object p1, p0, Lim/doit/pro/exp/BlindBoxActivity$1;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-static {p1}, Lim/doit/pro/exp/BlindBoxActivity;->access$200(Lim/doit/pro/exp/BlindBoxActivity;)V

    .line 92
    iget-object p1, p0, Lim/doit/pro/exp/BlindBoxActivity$1;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-static {p1}, Lim/doit/pro/exp/BlindBoxActivity;->access$300(Lim/doit/pro/exp/BlindBoxActivity;)V

    .line 93
    return-void
.end method
