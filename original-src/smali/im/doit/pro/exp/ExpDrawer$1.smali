.class Lim/doit/pro/exp/ExpDrawer$1;
.super Ljava/lang/Object;
.source "ExpDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/exp/ExpDrawer;->wire(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 23
    const-string v0, "im.doit.pro.exp.BlindBoxActivity"

    invoke-static {p1, v0}, Lim/doit/pro/exp/ExpDrawer;->access$000(Landroid/view/View;Ljava/lang/String;)V

    .line 24
    return-void
.end method
