.class Lim/doit/pro/github/GitHubSync$1;
.super Ljava/lang/Object;
.source "GitHubSync.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSync;->wire(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lim/doit/pro/github/GitHubSync$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 85
    iget-object p1, p0, Lim/doit/pro/github/GitHubSync$1;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lim/doit/pro/github/GitHubSync;->open(Landroid/app/Activity;)V

    .line 86
    return-void
.end method
