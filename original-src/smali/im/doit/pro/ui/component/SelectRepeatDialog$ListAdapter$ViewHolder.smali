.class abstract Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$ViewHolder;
.super Landroid/widget/RelativeLayout;
.source "SelectRepeatDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$ViewHolder;->this$1:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    .line 191
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 192
    return-void
.end method


# virtual methods
.method public abstract setViewContent(I)V
.end method
